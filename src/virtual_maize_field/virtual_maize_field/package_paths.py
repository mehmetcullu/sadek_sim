from __future__ import annotations

from pathlib import Path


def _is_package_share_root(path: Path) -> bool:
    required_paths = (
        path / "package.xml",
        path / "config",
        path / "launch",
        path / "models",
    )
    return all(required_path.exists() for required_path in required_paths)


def get_package_share_path(package_name: str = "virtual_maize_field") -> Path:
    """
    Resolve package share path.

    For this package, prefer the workspace source tree so config/model edits are
    picked up immediately during development, even when Python modules are being
    imported from a colcon build directory. Fall back to the ROS 2 ament index
    when only an installed package is available.
    """
    module_root = Path(__file__).resolve().parents[1]

    if package_name == "virtual_maize_field":
        if _is_package_share_root(module_root):
            return module_root

        for parent in module_root.parents:
            source_tree_path = parent / "src" / package_name
            if _is_package_share_root(source_tree_path):
                return source_tree_path

    try:
        from ament_index_python.packages import get_package_share_directory

        return Path(get_package_share_directory(package_name))
    except Exception:
        if package_name != "virtual_maize_field":
            raise

        return module_root

from __future__ import annotations

from pathlib import Path


def get_package_share_path(package_name: str = "virtual_maize_field") -> Path:
    """
    Resolve package share path.

    Prefer ROS 2 ament index when available. Fall back to source-tree layout so the
    world generator can run in a plain Python environment.
    """
    try:
        from ament_index_python.packages import get_package_share_directory

        return Path(get_package_share_directory(package_name))
    except Exception:
        if package_name != "virtual_maize_field":
            raise

        return Path(__file__).resolve().parents[1]

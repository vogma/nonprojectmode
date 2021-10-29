

from pathlib import Path
from vunit import VUnit

VU = VUnit.from_argv()

lib = VU.add_library("lib")
lib.add_source_files("sseg_controller_tb.vhd")
lib.add_source_files("../../src/sseg/*.vhd")

VU.main()

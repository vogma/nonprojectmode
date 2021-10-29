#!/usr/bin/env python3

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this file,
# You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Copyright (c) 2014-2021, Lars Asplund lars.anders.asplund@gmail.com

"""
VHDL UART
---------

A more realistic test bench of an UART to show VUnit VHDL usage on a
typical module.
"""

from pathlib import Path
from vunit import VUnit

VU = VUnit.from_argv()


SRC_PATH = Path(__file__).parent / "src"

lib = VU.add_library("lib")
lib.add_source_files("uart_tx_controller_tb.vhd")
lib.add_source_files("../src/uart/*.vhd")
#VU.add_library("tb_uart_lib").add_source_files(SRC_PATH / "test" / "*.vhd")

VU.main()

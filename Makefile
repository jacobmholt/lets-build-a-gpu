# The Nameless GPU
#
# Copyright (C) 2013 Jacob Holt & Matthew Brades.
# All rights reserved.
# This code is licensed under the NGPUL, file ngpul.txt,
# which you should have recieved with this code.
# If not, please email Jacob Holt at jacob.matthew.holt<at>gmail.com

test: test_start memory_controller_test system_interfaces_test video_chip_test video_interfaces_test

test_start:
	test -e $(which iverilog)

memory_controller_test:
	$(MAKE) -C memory_controller test

system_interfaces_test:
	$(MAKE) -C system_interfaces test

video_chip_test:
	$(MAKE) -C video_chip test

video_interfaces_test:
	$(MAKE) -C video_interfaces test

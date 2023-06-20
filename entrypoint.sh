#!/bin/bash
# Copyright (C) 2019-2021 Intel Corporation
#
# SPDX-License-Identifier: GPL-2.0-only
#

if [ -e ${HOME}/setup.sh ]; then
    # Buildtools has been installed so enable it
    . ${HOME}/setup.sh || exit 1
fi

exec "/bin/bash"
import os

import pytest


@pytest.fixture
def current_directory():
    return os.path.abspath(os.path.dirname(__file__))


def test_tmuxconf_link(File, current_directory):
    zshrc = File(os.path.expanduser('~/.xinitrc'))
    assert zshrc.is_symlink
    assert zshrc.linked_to == os.path.join(current_directory, '.xinitrc')

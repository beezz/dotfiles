import os

import pytest


@pytest.fixture
def current_directory():
    return os.path.abspath(os.path.dirname(__file__))


def test_zshrc_link(File, current_directory):
    zshrc = File(os.path.expanduser('~/.zshrc'))
    assert zshrc.is_symlink
    assert zshrc.linked_to == os.path.join(current_directory, '.zshrc')

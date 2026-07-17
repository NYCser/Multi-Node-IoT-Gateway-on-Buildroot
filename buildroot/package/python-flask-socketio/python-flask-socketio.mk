################################################################################
#
# python-flask-socketio
#
################################################################################

PYTHON_FLASK_SOCKETIO_VERSION = 5.5.1
PYTHON_FLASK_SOCKETIO_SOURCE = flask_socketio-$(PYTHON_FLASK_SOCKETIO_VERSION).tar.gz
PYTHON_FLASK_SOCKETIO_SITE = https://files.pythonhosted.org/packages/source/f/flask-socketio
PYTHON_FLASK_SOCKETIO_LICENSE = MIT
PYTHON_FLASK_SOCKETIO_LICENSE_FILES = LICENSE
PYTHON_FLASK_SOCKETIO_SETUP_TYPE = setuptools

PYTHON_FLASK_SOCKETIO_DEPENDENCIES = \
    python-flask \
    python-socketio

$(eval $(python-package))

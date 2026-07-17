"""
Firebase stub for Buildroot offline mode
"""

_apps = {}


class DummyFirestore:

    def collection(self, *args, **kwargs):
        return self

    def document(self, *args, **kwargs):
        return self

    def get(self, *args, **kwargs):
        return None

    def set(self, *args, **kwargs):
        return True

    def update(self, *args, **kwargs):
        return True

    def add(self, *args, **kwargs):
        return True


firestore = DummyFirestore()


class DummyCredentials:

    @staticmethod
    def Certificate(path):
        return None


credentials = DummyCredentials()


def initialize_app(*args, **kwargs):
    print("[Firebase Stub] initialize_app ignored")
    _apps["default"] = True
    return True


def get_app(*args, **kwargs):
    if "default" not in _apps:
        raise Exception("Firebase app not initialized")
    return True


def delete_app(*args, **kwargs):
    _apps.clear()


def get_firestore():
    return firestore


print("[INFO] Firebase disabled - Offline Mode")

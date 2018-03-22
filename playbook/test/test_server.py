def test_passwd_File(host):
    passwd = host.file("/etc/passwd")
    assert passwd.contains("root")
    assert passwd.user == "root"
    assert passwd.group == "root"
    assert passwd.mode == 0o644

def test_user_setup(host):
    user = host.user('setup')
    assert user.uid == 1000
    assert user.gid == 1000
    assert user.group == 'setup'

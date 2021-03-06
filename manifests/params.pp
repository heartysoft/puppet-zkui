class zkui::params {
  
  $install_dir = '/opt/zkui'
  $version = '2.0-SNAPSHOT'

  $properties = {
    'serverPort'                                                              => '9090',
    'zkServer'                                                                => '192.168.60.2:2181',
    #Http path of the repository. Ignore if you dont intent to upload files from repository.
    'scmRepo'                                                                 => 'http://myserver.com/@rev1=',
    #Path appended to the repo url. Ignore if you dont intent to upload files from repository.
    'scmRepoPath'                                                             => '//appconfig.txt',
    #if set to true then userSet is used for authentication, else ldap authentication is used.
    'ldapAuth'                                                                => 'false',
    'ldapDomain'                                                              => 'mycompany,mydomain',
    'userSet'                                                                 => '{"users": [{ "username":"admin" , "password":"manager","role": "ADMIN" },{ "username":"appconfig" , "password":"appconfig","role": "USER" }]}',
    #ldap authentication url. Ignore if using file based authentication.
    'ldapUrl'                                                                 => 'ldap://<ldap_host>:<ldap_port>/dc=mycom,dc=com',
    #Specific roles for ldap authenticated users. Ignore if using file based authentication.
    'ldapRoleSet'                                                             => '{"users": [{ "username":"domain\\user1" , "role": "ADMIN" }]}',
    #Set to prod in production and dev in local. Setting to dev will clear history each time.
    'env'                                                                     => 'prod',
    'jdbcClass'                                                               => 'org.h2.Driver',
    'jdbcUrl'                                                                 => 'jdbc:h2:zkui',
    'jdbcUser'                                                                => 'root',
    'jdbcPwd'                                                                 => 'manager',
    #If you want to use mysql db to store history then comment the h2 db section.
    #'jdbcClass'                                                               => 'com.mysql.jdbc.Driver',  
    #'jdbcUrl'                                                                 => 'jdbc:mysql://localhost:3306/zkui',
    #'jdbcUser'                                                                => 'root',
    #'jdbcPwd'                                                                 => 'manager',
    'loginMessage'                                                            => 'Please login using admin/manager or appconfig/appconfig.',
    #session timeout 5 mins/300 secs.
    'sessionTimeout'                                                          => '300',
    #Block PWD exposure over rest call.
    'blockPwdOverRest'                                                        => 'false'
  }
}

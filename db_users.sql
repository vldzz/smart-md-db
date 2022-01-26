CREATE USER 'alex' IDENTIFIED BY 'Password98#';

GRANT SELECT, INSERT ON smart_md.* TO 'alex';

REVOKE INSERT ON smart_md.* FROM 'alex';

SHOW GRANTS FOR 'alex';



CREATE USER 'smart_md_admin' IDENTIFIED BY 'Qwerty1!';

GRANT ALL PRIVILEGES ON smart_md.* TO 'smart_md_admin';

SHOW GRANTS FOR 'smart_md_admin';


--
-- Turn off autocommit and start a transaction so that we can use the temp tables
--

SET AUTOCOMMIT = 0;

START TRANSACTION;

--
-- Insert client information into the temporary tables. To add clients to the HSQL database, edit things here.
-- 

INSERT INTO client_details (client_id, client_secret, client_name, dynamically_registered, refresh_token_validity_seconds, access_token_validity_seconds, id_token_validity_seconds, allow_introspection) VALUES
	(1, 'secret', 'Test Client', false, null, 3600, 600, true);

INSERT INTO client_scope (owner_id, scope) VALUES
	(1, 'openid'),
	(1, 'profile'),
	(1, 'email'),
	(1, 'address'),
	(1, 'phone'),
	(1, 'offline_access');

INSERT INTO client_redirect_uri (owner_id, redirect_uri) VALUES
	(1, 'http://localhost/'),
	(1, 'http://localhost:8080/');
	
INSERT INTO client_grant_type (owner_id, grant_type) VALUES
	(1, 'authorization_code'),
	(1, 'urn:ietf:params:oauth:grant_type:redelegate'),
	(1, 'implicit'),
	(1, 'refresh_token');
    
COMMIT;

SET AUTOCOMMIT = 1;


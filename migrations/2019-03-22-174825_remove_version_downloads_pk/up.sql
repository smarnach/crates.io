-- ALERT! DESTRUCTIVE MIGRATION
-- DO NOT DEPLOY UNTIL PREVIOUS COMMIT IS DEPLOYED
ALTER TABLE version_downloads
  DROP CONSTRAINT version_downloads_pkey,
  ADD CONSTRAINT version_downloads_pkey PRIMARY KEY USING INDEX version_downloads_unique,
  DROP COLUMN id;

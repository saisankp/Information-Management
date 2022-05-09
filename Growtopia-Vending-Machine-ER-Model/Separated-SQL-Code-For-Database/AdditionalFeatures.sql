#Below command shows all triggers
show triggers;
#Below command returns the command to remove a trigger, copy it and run it to remove a trigger (Example return: DROP TRIGGER UpdateDigiVend;)
SELECT Concat('DROP TRIGGER ', Trigger_Name, ';') FROM  information_schema.TRIGGERS WHERE TRIGGER_SCHEMA = 'GrowtopiaVendingStore';


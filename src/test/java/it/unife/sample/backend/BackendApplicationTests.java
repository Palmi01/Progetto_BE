
package it.unife.sample.backend;

import it.unife.sample.backend.service.prjTimesheetEntityService;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class BackendApplicationTests {

    @Autowired
    private prjTimesheetEntityService timesheetService;

    @Test
    void testExistingTable() {
        //@@ La tabella nel database MySQL di questo progetto ha nome prj_timesheet_entity
        //@@ Il risultato atteso è l'esistenza della tabella
        boolean exists = timesheetService.doesTableExist("prj_timesheet_entity");
        Assertions.assertTrue(exists, "The table prj_timesheet_entity should be presente in the MySQL database of this project.");
    }

    @Test
    void testNotExistingTable() {
         //@@ Il risultato atteso è la non esistenza per un nome di tabella non presente nel database
        boolean exists = timesheetService.doesTableExist("table_not_present");
        Assertions.assertFalse(exists, "The table table_not_present shouldn't be presente in the MySQL database of this project.");

    }
}
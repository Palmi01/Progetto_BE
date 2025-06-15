package it.unife.sample.backend.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

import java.util.UUID;

//@@ Struttura dati del singolo elemento del Timesheet
@Data
@Entity
public class prjTimesheetEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    private String name;
    private String resourceName;
    private String resourceSurname;
    private int    hours;
    private String phase;
    private String dataAndTime;
    
}

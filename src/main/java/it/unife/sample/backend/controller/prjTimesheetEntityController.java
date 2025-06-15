package it.unife.sample.backend.controller;

import it.unife.sample.backend.model.prjTimesheetEntity;
import it.unife.sample.backend.service.prjTimesheetEntityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
import java.util.UUID;


@RestController
@RequestMapping("/api/prjTimesheet-entities")
public class prjTimesheetEntityController {
   
    @Autowired
    private prjTimesheetEntityService service;

    @GetMapping
    public List<prjTimesheetEntity> getAll() {
        return service.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<prjTimesheetEntity> getById(@PathVariable UUID id) {
        Optional<prjTimesheetEntity> entity = service.findById(id);
        return entity.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping
    public prjTimesheetEntity create(@RequestBody prjTimesheetEntity entity) {
        return service.save(entity);
    }

    @PutMapping("/{id}")
    public ResponseEntity<prjTimesheetEntity> update(@PathVariable UUID id, @RequestBody prjTimesheetEntity entity) {
        if (!service.findById(id).isPresent()) {
            return ResponseEntity.notFound().build();
        }
        entity.setId(id);
        return ResponseEntity.ok(service.save(entity));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable UUID id) {
        if (!service.findById(id).isPresent()) {
            return ResponseEntity.notFound().build();
        }
        service.deleteById(id);
        return ResponseEntity.noContent().build();
    }
}
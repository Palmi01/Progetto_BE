package it.unife.sample.backend.service;

import it.unife.sample.backend.model.prjTimesheetEntity;
import it.unife.sample.backend.repository.prjTimesheetEntityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.jdbc.core.JdbcTemplate;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

 @Service
public class prjTimesheetEntityService {

    @Autowired
    private prjTimesheetEntityRepository repository;
    @Autowired
    private JdbcTemplate jdbcTemplate;   

    public List<prjTimesheetEntity> findAll() {
        return repository.findAll();
    }

    public Optional<prjTimesheetEntity> findById(UUID id) {
        return repository.findById(id);
    }

    public prjTimesheetEntity save(prjTimesheetEntity entity) {
        return repository.save(entity);
    }

    public void deleteById(UUID id) {
        repository.deleteById(id);
    }

     //@@  Metodo per la verificare dell'esistenza di una tabella nel database SQL
     public boolean doesTableExist(String tableName) {
        String sql = "SELECT COUNT(*) FROM information_schema.tables " +
                     "WHERE table_schema = DATABASE() AND table_name = ?";
        Integer count = jdbcTemplate.queryForObject(sql, Integer.class, tableName);
        return count != null && count > 0;
    }
} 
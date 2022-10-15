package ma.iss.di.employeemanager.resources;

import lombok.RequiredArgsConstructor;
import ma.iss.di.employeemanager.model.Employee;
import ma.iss.di.employeemanager.service.EmployeeService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/employee")
@RequiredArgsConstructor
public class EmployeeResource {
    private final EmployeeService service;

    @GetMapping("/all")
    public ResponseEntity<List<Employee>> getAll(@RequestParam(name = "kwd", required = false) String kwd) {
        return new ResponseEntity<>(
                service.findAll(kwd),
                HttpStatus.OK
        );
    }

    @GetMapping("/find/{id}")
    public ResponseEntity<Employee> getBy(@PathVariable("id") Long id) {
        return new ResponseEntity<>(
                service.findOne(id),
                HttpStatus.OK
        );
    }

    @PostMapping("/add")
    public ResponseEntity<Employee> createNew(@RequestBody Employee employee) {
        return new ResponseEntity<>(
                service.addNew(employee),
                HttpStatus.CREATED
        );
    }

    @PostMapping("/add-many")
    public ResponseEntity<List<Employee>> createNewMany(@RequestBody List<Employee> employees) {
        return new ResponseEntity<>(
                service.addNewMany(employees),
                HttpStatus.CREATED
        );
    }

    @PutMapping("/update")
    public ResponseEntity<Employee> updateExisting(@RequestBody Employee employee) {
        return new ResponseEntity<>(
                service.saveExisting(employee),
                HttpStatus.OK
        );
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<?> deleteExisting(@PathVariable("id") Long id) {
        service.delete(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}

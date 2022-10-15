package ma.iss.di.employeemanager.service;

import lombok.RequiredArgsConstructor;
import ma.iss.di.employeemanager.exception.EntityNotFoundException;
import ma.iss.di.employeemanager.model.Employee;
import ma.iss.di.employeemanager.repo.EmployeeRepo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class EmployeeService {
    private final EmployeeRepo repository;

    public Employee addNew(Employee item) {
        Assert.isTrue(item != null, "");
        Assert.isTrue(item.getId() == null, "");
        item.setEmployeeCode(UUID.randomUUID().toString());
        return repository.save(item);
    }

    @Transactional
    public List<Employee> addNewMany(List<Employee> employees) {
        return repository.saveAll(employees.stream()
                .filter(Objects::nonNull)
                .filter(e -> e.getId() == null)
                .peek(e -> e.setEmployeeCode(UUID.randomUUID().toString()))
                .collect(Collectors.toList()));
    }

    public Employee saveExisting(Employee item) {
        Assert.isTrue(item != null, "");
        Assert.isTrue(item.getId() != null, "");
        return repository.save(item);
    }

    public List<Employee> findAll(String kwd) {
        return repository.findAllByKeyword(kwd);
    }

    public void delete(Long id) {
        repository.deleteById(id);
    }

    public Employee findOne(Long id) {
        return repository.findById(id).orElseThrow(() -> new EntityNotFoundException("Employee with ID " + id + " not found"));
    }
}

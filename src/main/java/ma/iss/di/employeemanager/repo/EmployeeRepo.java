package ma.iss.di.employeemanager.repo;

import ma.iss.di.employeemanager.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmployeeRepo extends JpaRepository<Employee, Long> {

    @Query("""
            select  e from Employee e
            where (:kwd is null  
                        or e.name like concat('%', :kwd, '%') 
                        or e.email like concat('%', :kwd, '%') 
                        or e.jobTitle like concat('%', :kwd, '%') 
                        or e.phone like concat('%', :kwd, '%'))
            order by e.name asc, e.id desc
            """)
    List<Employee> findAllByKeyword(@Param("kwd") String kwd);
}

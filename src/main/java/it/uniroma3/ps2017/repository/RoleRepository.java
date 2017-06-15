package it.uniroma3.ps2017.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import it.uniroma3.ps2017.model.Role;

public interface RoleRepository extends JpaRepository<Role, Integer>{

	Role findByRole(String role);

}
package com.klique.testbench.repository;

import com.klique.testbench.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}

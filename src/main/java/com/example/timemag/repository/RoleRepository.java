package com.example.timemag.repository;

import java.util.Optional;

import com.example.timemag.models.ERole;
import com.example.timemag.models.Role;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface RoleRepository extends MongoRepository<Role, String> {
    Optional<Role> findByName(ERole name);
}
package com.virtualJsp.MVC_JSP.repository;

import com.virtualJsp.MVC_JSP.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,Integer> {
}

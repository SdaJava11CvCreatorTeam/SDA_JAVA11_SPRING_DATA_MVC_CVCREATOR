package pl.hit.spring.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;


@Configuration
@ComponentScan(basePackages = "pl.hit.spring.core")
public class RootConfig {

}
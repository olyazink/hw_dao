package ru.netology.hwdao.Controller;

import ru.netology.hwdao.Repository.DaoRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class DaoController {

    private final DaoRepository daoRepository;

    public DaoController(DaoRepository daoRepository) {
        this.daoRepository = daoRepository;
    }

    @GetMapping("products/fetch-product")
    public List<String> getSqlSetup(@RequestParam String name) {
        return daoRepository.getProductName(name);
    }
    @PostMapping("/post")
    public List<String> getSqlSetups(@RequestParam String name) {
        return daoRepository.getProductName(name);
    }
}
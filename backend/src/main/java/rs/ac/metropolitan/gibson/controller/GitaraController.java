package rs.ac.metropolitan.gibson.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import rs.ac.metropolitan.gibson.entity.Gitara;
import rs.ac.metropolitan.gibson.service.GitaraService;

import java.util.List;

@RestController
@RequestMapping("/gitara")
@RequiredArgsConstructor
public class GitaraController {
    private final GitaraService gitaraService;
    @GetMapping
    public ResponseEntity<List<Gitara>> getAll() {
        return ResponseEntity.ok(gitaraService.findAll());
    }

    @GetMapping("/{gitaraId}")
    public ResponseEntity<Gitara> getById(@PathVariable Integer gitaraId) {
        return ResponseEntity.ok(gitaraService.findById(gitaraId));
    }

    @PostMapping
    public ResponseEntity<Gitara> save(@RequestBody Gitara gitara) {
        return ResponseEntity.ok(gitaraService.save(gitara));
    }

    @PutMapping
    public ResponseEntity<Gitara> update(@RequestBody Gitara gitara) {
        return ResponseEntity.ok(gitaraService.update(gitara));
    }

    @DeleteMapping("/{gitaraId}")
    public void deleteById(@PathVariable Integer gitaraId) {
        gitaraService.deleteById(gitaraId);
    }

}

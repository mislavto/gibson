package rs.ac.metropolitan.gibson.service.impl;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import rs.ac.metropolitan.gibson.entity.Gitara;
import rs.ac.metropolitan.gibson.repository.GitaraRepository;
import rs.ac.metropolitan.gibson.service.GitaraService;

import java.util.List;
import java.util.NoSuchElementException;

@Data
@Service
@RequiredArgsConstructor
@EqualsAndHashCode(callSuper = false, onlyExplicitlyIncluded = true)
public class GitaraServiceImpl implements GitaraService {
    private final GitaraRepository gitaraRepository;

    @Override
    public List<Gitara> findAll() {
        return gitaraRepository.findAll();
    }

    @Override
    public Gitara save(Gitara gitara) {
        return gitaraRepository.save(gitara);
    }

    @Override
    public Gitara update(Gitara gitara) {
        return gitaraRepository.save(gitara);
    }

    @Override
    public Gitara findById(Integer gitaraId) {
        return gitaraRepository.findById(gitaraId).orElseThrow(() -> new NoSuchElementException("GitaraService.notFound"));
    }

    @Override
    public void deleteById(Integer gitaraId) {
        gitaraRepository.deleteById(gitaraId);
    }
}

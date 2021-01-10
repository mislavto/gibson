package rs.ac.metropolitan.gibson.service;

import rs.ac.metropolitan.gibson.entity.Gitara;

import java.util.List;

public interface GitaraService {
    List<Gitara> findAll();

    Gitara save(Gitara gitara);

    Gitara update(Gitara gitara);

    Gitara findById(Integer gitaraId);

    void deleteById(Integer gitaraId);
}

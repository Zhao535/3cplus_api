package cn.maidaotech.smartapi.api.secKill.repository;

import cn.maidaotech.smartapi.api.secKill.model.SecKill;
import cn.maidaotech.smartapi.common.reposiotry.BaseRepository;

import java.util.Collection;
import java.util.List;

public interface SecKillRepository extends BaseRepository<SecKill, Integer> {

    List<SecKill> findByIdIn(Collection<Integer> ids);

}

package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Trainer;

public interface HealthSearchMapper {

	List<Trainer> selectTrainer();
	
}

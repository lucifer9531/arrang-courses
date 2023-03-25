package com.lucifer.service.impl;

import com.lucifer.domain.Location;
import com.lucifer.repository.LocationRepository;
import com.lucifer.service.LocationService;
import com.lucifer.service.dto.LocationDto;
import com.lucifer.service.dto.LocationQueryCriteria;
import com.lucifer.service.mapstruct.LocationMapper;
import com.lucifer.utils.PageUtil;
import com.lucifer.utils.QueryHelp;
import com.lucifer.utils.ValidationUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Set;

/**
 * @author lucifer
 */
@Service
@RequiredArgsConstructor
public class LocationServiceImpl implements LocationService {

    private final LocationRepository locationRepository;
    private final LocationMapper locationMapper;


    @Override
    public Object queryAll(LocationQueryCriteria criteria, Pageable pageable) {
        Page<Location> page = locationRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root, criteria, criteriaBuilder), pageable);
        return PageUtil.toPage(page.map(locationMapper::toDto));
    }

    @Override
    public List<LocationDto> queryAll() {
        return locationMapper.toDto(locationRepository.findAll());
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void create(Location resources) {
        locationRepository.save(resources);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(Location resources) {
        Location location = locationRepository.findById(resources.getId()).orElseGet(Location::new);
        ValidationUtil.isNull(location.getId(), "Location", "id", resources.getId());
        location.copy(resources);
        locationRepository.save(location);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Set<Long> ids) {
        for (Long id : ids) {
            locationRepository.deleteById(id);
        }
    }
}

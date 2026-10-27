package ru.devmark.dao

import org.springframework.data.repository.CrudRepository
import org.springframework.data.repository.PagingAndSortingRepository
import org.springframework.data.rest.core.annotation.RepositoryRestResource
import ru.devmark.model.Band

@RepositoryRestResource(path = "bands")
interface BandRepository : CrudRepository<Band, Int>, PagingAndSortingRepository<Band, Int>

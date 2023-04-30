package ru.devmark.dao

import org.springframework.data.repository.PagingAndSortingRepository
import org.springframework.data.rest.core.annotation.RepositoryRestResource
import ru.devmark.model.Band
import java.util.Optional

@RepositoryRestResource(path = "bands")
interface BandRepository : PagingAndSortingRepository<Band, Int?> {

    fun findById(id: Int?): Optional<Band>

    fun save(band: Band): Band

    fun deleteById(id: Int?)
}

import React from 'react'
import { Pagination, PaginationStyle } from './style'

const PaginationContent = ({ currentPage = 1, totalPages = 0, onClickPagination }) => {

    let paginationLength = []

    for (let i = 1; i <= totalPages; i++) {
        paginationLength.push(i)
    }

    return (
        <PaginationStyle>
            {
                paginationLength && paginationLength.length > 1 ? (
                    <Pagination>
                        <a onClick={() => onClickPagination(1)}>&laquo;</a>
                        {
                            paginationLength.map((item, index) => (
                                <a onClick={() => onClickPagination(item)} key={index} className={currentPage === item ? `active` : ''}>{item}</a>
                            ))
                        }
                        <a onClick={() => onClickPagination(paginationLength.length)}>&raquo;</a>
                    </Pagination>
                )
                    : null
            }
        </PaginationStyle>
    )
}

export default PaginationContent
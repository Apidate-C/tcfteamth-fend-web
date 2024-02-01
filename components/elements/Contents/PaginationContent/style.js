import styled from 'styled-components'

export const PaginationStyle = styled.div`
    display: flex;
    justify-content: flex-end;
    @media (max-width: 768px) { 
        justify-content: center;
    }
`

export const Pagination = styled.div`
    display: inline-block;
     a {
        color: black;
        float: left;
        padding: 8px 16px;
        text-decoration: none;
      }
      
     a.active {
        background-color: #ef7285;
        color: white;
        border-radius: 5px;
      }
      
     a:hover:not(.active) {
        background-color: #ddd;
        border-radius: 5px;
      }
`
import styled from 'styled-components'

export const HeaderTable = styled.div`
    display: flex;
    align-items: center;
    justify-content: space-between;
    button {
        img {
            width: 24px !important;
            height: auto !important;
            object-fit: contain !important;
       }
       span {
           margin-left: 8px;
       }
       @media (max-width: 576px) { 
            margin-top: 16px;
       }
    }
    .right {
        padding-right: 28px;
    }
    .col-sm-12 {
        @media (max-width: 576px) { 
            padding: 0px !important;
        }
    }
    .col-12 {
        @media (max-width: 576px) { 
            padding: 0px !important;
        }
    }
    @media (max-width: 576px) { 
        align-items: flex-start;
        flex-direction: column;
    }
`

export const FilterBox = styled.div`
    display: flex;
    align-items: center;
    span {
        font-family: Prompt;
        font-size: 16px;
        font-weight: 600;
        margin-right: 8px;
        @media (max-width: 576px) { 
            margin-bottom: 10px;
        }
    }
    @media (max-width: 576px) { 
        align-items: flex-start;
        flex-direction: column;
    }
`
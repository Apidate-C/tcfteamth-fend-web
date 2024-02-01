import styled from 'styled-components'


export const WrapperTitle = styled.div`
    display: flex;
    align-items: center;
    width: auto;
`

export const Title = styled.h3`
    font-size: 24px;
    flex: 0 0 auto;
    margin-right: 10px;
    display: flex;
    flex-wrap: wrap;
    @media (max-width: 1024px) {
        font-size: 22px;
    }
    @media (max-width: 576px) {
        font-size: 20px;
        flex: 0 0 80%;
    }
`

export const LineTitle = styled.div`
    height: 2px;
    background-color: #e1e1e1;
    flex: 1 1 auto;
`
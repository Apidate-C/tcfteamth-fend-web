import styled, { css } from 'styled-components'


export const WrapperNavbar = styled.section`
    .col-2, .col-10 {
        padding: 0px !important;
    }

`

export const NavbarListBox = styled.div`
    display: flex;
    align-items: center;
    padding: 16px;
    background-color: ${props => (props.active ? '#4e6c71' : '#638287')};
    img {
        width: 24px !important;
        height: auto !important;
    }
    span {
        font-family: Prompt;
        font-size: 16px;
        font-weight: 400;
        color: #fff;
        margin-left: 16px;
    }
    &:hover {
        background-color: #4e6c71;
        cursor: pointer;
    }
`

export const WrapperBg = styled.div`
    width: 100%;
    position: fixed;
    height: 100vh;
    background-color: #638287;
    padding: 36px 0px;
    .logo-image-style {
        display: flex;
        margin-left: 5.2%;
        img {
            width: 120px !important;
            height: auto !important;
            object-fit: contain !important;
        }
        margin-bottom: 36px;
        @media (max-width: 1440px) { 
            margin-left: 4.5%;
         }
         @media (max-width: 1200px) { 
            margin-left: 4%;
         }
         @media (max-width: 1024px) { 
            margin-left: 7%;
         }
    }
`
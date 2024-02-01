import styled from 'styled-components'

export const FooterBanner = styled.div`
    position: relative;
    height: 800px;
    background-color: #002d40;
    img {
        object-fit: contain !important;
        @media (max-width: 1200px) { 
            object-fit: cover !important;
        }
    }
    .text-footer-style {
        color: #fff;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        .text-footer {
            font-size: 5.5rem;
            font-family: Prompt;
            font-weight: 700;
            text-align: center;
            @media (max-width: 1200px) {
                font-size: 52px;
            }
            @media (max-width: 768px) {
                font-size: 42px;
            }
            @media (max-width: 576px) {
                font-size: 28px;
            }
        }
        button {
            margin-top: 30px !important;
            font-size: 18px;
            font-weight: bold;
        }
        .icon-style {
            display: flex;
            justify-content: center;
            img { 
                width: 90px !important;
                height: auto !important;
                object-fit: contain !important;
            }
        }
    }
`

export const FooterWrapper = styled.div`
    height: 100px;
    background-color: #628187;
    display: flex;
    align-items: center;
    padding-left: 5%;
    span {
        color: #555555;
    }
`
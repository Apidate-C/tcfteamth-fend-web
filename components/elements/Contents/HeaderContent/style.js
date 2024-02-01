import styled from 'styled-components'


export const WrapperHeader = styled.div`
    width: 100%;
    height: 64px;
    background-color: #fff;
    border-bottom: solid 1px #e1e1e1;
    display: flex;
    justify-content: space-between;
    padding: 16px 24px;
`

export const Profile = styled.div`
    display: flex;
    align-items: center;
    img {
        width: 32px !important;
        height: auto !important;
        object-fit: contain !important;
    }
    span {
        font-family: Prompt;
        font-size: 16px;
        font-weight: normal;
        margin-left: 8px;
    }
`

export const Logout = styled.div`
    display: flex;
    align-items: center;
    cursor: pointer;
    img {
        width: 12px !important;
        height: auto !important;
        object-fit: contain !important;
    }
    span {
        font-family: Prompt;
        font-size: 16px;
        font-weight: normal;
        margin-right: 8px;
    }
`

export const HeaderBanner = styled.div`
    position: relative;
    height: 600px;
    @media (max-width: 576px) { 
        height: 400px;
    }
    .img-bg { 
        height: 600px;
        border-radius: 0 0 90% 90% / 15em;
        background-color: rgba(0, 45, 64, 0.7) !important;
        @media (max-width: 576px) { 
            height: 400px;
        }
    }
    img {
        z-index: -1 !important;
        border-radius: 0 0 90% 90% / 15em;
    }
    .text-header-style {
        color: #fff;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        text-align: center;
        .text-header-title {
            font-family: Prompt;
            font-size: 42px;
            font-weight: bold;
            @media (max-width: 576px) { 
                font-size: 32px;
            }
            @media (max-width: 425px) { 
                font-size: 26px;
            }
        }
        .text-header-subtitle {
            font-size: 20px;
            font-weight: 300;
            @media (max-width: 576px) { 
                font-size: 18px;
                margin-top: 20px;
            }
        }
        .text-header-breadcrumb {
            margin-top: 50px;
            font-size: 16px;
            span {
                font-weight: 100; 
            }
            @media (max-width: 576px) { 
                font-size: 14px;
                margin-top: 20px;
            }
        }
    }
`
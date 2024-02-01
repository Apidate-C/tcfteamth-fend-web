import styled from 'styled-components'

export const DesktopOnly = styled.div`
    display: block;
    @media (max-width: 768px) {
        display: none;
    }
`

export const MobileOnly = styled.div`
    display: none;
    @media (max-width: 768px) {
        display: block;
    }
`

export const TitlePages = styled.div`
    h1 {
        font-size: 54px;
        text-align: center;
        @media (max-width: 1024px) {
            font-size: 50px;
        }
        @media (max-width: 576px) {
            font-size: 32px;
        }
        @media (max-width: 425px) { 
            font-size: 28px;
        }
    }
    img {
        width: 30% !important;
        height: 15px !important;
    }
    .image-style {
        display: flex; 
        justify-content: center;
    }
`

export const WrapperMyShelf = styled.section`
    box-shadow: 0 0px 2px 0 rgba(0, 0, 0, 0.2), 0 2px 10px 0 rgba(0, 0, 0, 0.19);
    width: 90%;
    margin: 100px auto;
    padding: 30px 50px;
    @media (max-width: 576px) {
        width: 100%;
        box-shadow: 0 0px 0px 0 rgba(0, 0, 0, 1), 0 0px 0px 0 rgba(0, 0, 0, 1);
        padding: 30px 24px;
        margin: 20px auto;
    }
    .border-bottom {
        border-bottom: solid 1px #e7e7e8;
    }
`

export const WrapperFromAdmin = styled.section`
    border: solid 1px #e1e1e1;
    width: 100%;
    padding: 16px 0px 0px 0px;
    background-color: #fff;
`

export const SectionBox = styled.div`
    padding: 0px 32px 32px 32px;
    border-bottom: solid 1px #e7e7e8;
    @media (max-width: 576px) {
        padding: 0px 16px 24px 16px;
    }
`

export const LabelTitle = styled.label`
    font-family: Prompt;
    font-size: 16px;
    font-weight: bold;
    @media (max-width: 1024px) {
        font-size: 14px;
    }
`

export const InputBox = styled.input`
    height: 40px;
    width: 100%;
    border-radius: 4px;
    border: solid 2px ${props => props.require ? '#ff0000' : '#ddd'};
    background-color: #fff;
    padding: 0 8px;
    font-size: 18px;
    font-family: Prompt;
    font-weight: 300; 
    @media (max-width: 1024px) {
        font-size: 16px;
    }
`

export const SelectBox = styled.select`
    height: 40px;
    width: 100%;
    border-radius: 4px;
    border: solid 2px ${props => props.require ? '#ff0000' : '#ddd'};
    background-color: #fff;
    padding: 0 8px;
    font-size: 18px;
    font-family: Prompt;
    font-weight: 300; 
    @media (max-width: 1024px) {
        font-size: 16px;
    }
`


export const RadioBox = styled.label`
    display: flex; 
    align-items: center;
    margin: 8px 0;
    input[type="radio"] {
        display: none;
    }
    input[type="radio"] ~ span {
        position: relative;
        display: inline-block;
        padding: 0px 0 3px 25px;
    }
    input[type="radio"] ~ span:before {
        content: "";
        position: absolute;
        display: block;
        width: 18px;
        height: 18px;
        background: #fff;
        margin-right: 5px;
        border: 1px solid #ccc;
        border-radius: 50%;
        left: 0;
        top: 0;
        margin-top: 2px;
        box-sizing: border-box;
        transition: all 300ms ease-in-out;
    }
    input[type="radio"]:checked ~ span:before {
        border: 5px solid #29d;
    }
    input[type="radio"].active ~ span:before {
        border: 5px solid #29d;
    }
    input {
        margin-left: 10px;
        @media (max-width: 576px) {
            margin-right: -10px;
        }
    }
    span {
        font-size: 16px;
        @media (max-width: 1024px) {
            font-size: 14px;
        }
    }
`

export const FlexStyleUploadFile = styled.div`
    display: flex;
    align-items: center;
    margin: 16px 0;
    span {
        margin-left: 16px;
    }
    .display-file-download {
        display: flex;
        align-items: center;
        .icon-download{
            width: 20px !important;
            height: 20px !important;
            object-fit: contain !important;
            margin-left: 16px;
            cursor: pointer;
        }
        @media (max-width: 476px) {
            margin-top: 10px;
        }
    }
    @media (max-width: 476px) {
        flex-direction: column
    }
`

export const ButtonUploadFile = styled.button`
    display: flex;
    align-items: center;
    justify-content: center;
    height: 40px;
    padding: 14px 24px;
    border-radius: 4px;
    border: solid 1px #e1e1e1;
    background-color: #fff;
    cursor: pointer;
     .button-image {
        width: 20px !important;
        height: 20px !important;
        object-fit: contain !important;
        margin-right: 16px;
    }
    span {
        font-family: Prompt;
        font-size: 14px;
        color: #ef7285;
    }
`

export const ButtonTheme = styled.button`
    padding: 13px 24px;
    border-radius: 4px;
    border: none;
    background-color: ${props => (props.backgroundColor ? props.backgroundColor : '#ef7285')};
    height: 40px;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    span {
        color: #fff;
        font-family: Prompt;
        font-size: 16px;
    }
    .image-style {
        margin: 10px !important;
        width: 24px !important;
        height: auto !important;
        img {
            width: 24px !important;
            height: auto !important;
            object-fit: contain !important;
        }
    }
`

export const BackgroundLogin = styled.div`
        height: 100vh;
        background-color: #638287;
        display: flex;
        align-items: center;
        justify-content: center;
`

export const WrapperLogin = styled.section`
        .logo-image-style {
            display: flex;
            justify-content: center;
            img {
                width: 200px !important;
                height: auto !important;
                object-fit: contain !important;
            }
        }
        h1 {
            text-align: center;
            color: #fff;
            font-family: Prompt;
            font-weight: 300; 
            font-size: 32px;
            @media (max-width: 500px) {
                font-size: 28px;
            }
        }
`
export const LoginBox = styled.div`
        background-color: #fff;
        width: 450px;
        padding: 20px 40px 40px 40px;
        h3 {
            text-align: center;
            font-family: Prompt;
            font-weight: 300; 
            font-size: 24px;
            line-height: 1;
            @media (max-width: 500px) {
                font-size: 20px;
            }
        }
        .text-error {
            color: #ff0000;
            margin-top:20px;
            text-align: center;
        }
        @media (max-width: 500px) {
            width: 360px;
            padding: 20px 20px 40px 20px;
         }
         @media (max-width: 370px) {
            width: 300px;
         }
`

export const TabHeader = styled.div`
        height: 72px;
        background-color: #fff;
        padding: 16px 24px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        border-bottom: solid 1px #e1e1e1;
        button {
            img {
                 width: 24px !important;
                 height: auto !important;
                 object-fit: contain !important;
            }
            span {
                margin-left: 8px;
            }
        }
        .current-page {
            font-family: Prompt;
            font-weight: 500;
        }
`

export const BackgroundAdmin = styled.div`
        background-color: #f5f7fa;
        min-height: 100vh;
`

export const TableStyle = styled.div`
        margin-top: 20px;
        table {
            border-collapse: collapse;
            width: 100%;
        }
        table thead tr {
            font-family: Prompt;
            font-size: 14px;
            font-weight: 500;
        }
        table tbody tr {
            font-family: Prompt;
            font-size: 14px;
            font-weight: normal;
        }
        table thead tr, table tbody tr {
            height: 52px;
        }
        table thead tr td:first-child, table tbody tr td:first-child {
            text-align: center;
        }
        table tbody tr:nth-child(odd) {
            background-color: #f5f7fa;
        }
`

export const BackgroundEdit = styled.button`
        width: 24px;
        height: 24px;
        display: flex;
        align-items: center;
        justify-content: center;
        background-color: rgba(255, 199, 129, 0.2);
        border-radius: 50%;
        cursor: pointer;
        border: none;
        img {
            width: 14px !important;
            height: auto !important;
            object-fit: contain !important;
       }
`

export const BackgroundDelete = styled.button`
        width: 24px;
        height: 24px;
        display: flex;
        align-items: center;
        justify-content: center;
        background-color: #f5dfe2;
        border-radius: 50%;
        cursor: pointer;
        border: none;
        img {
            width: 14px !important;
            height: auto !important;
            object-fit: contain !important;
       }
`
export const WrapperTable = styled.div`
    padding: 24px;
    border-radius: 4px;
    border: solid 1px #e1e1e1;
    background-color: #fff;
`

export const HeaderMobile = styled.div`
    height: 64px;
    width: 100%;
    display: flex;
    align-items: center;
    background-color: #648388;
    padding: 4px 16px;
    .logo-image-style {
        img {
            width: 98px !important;
            height: auto !important;
            object-fit: contain !important;
        }
    }
    .hamberger-image-style {
        margin-right: 16px;
        img {
            width: 24px !important;
            height: auto !important;
            object-fit: contain !important;
        }
    }
`

export const TableMobileStyle = styled.div`
    margin-top: 16px;
    .bg-box {
        padding: 16px;
    }
    .bg-box:nth-child(odd) {
        background-color: #f5f7fa;
     }
     .title {
        font-family: Prompt;
        font-size: 16px;
        font-weight: 600;
     }
     .text {
        font-family: Prompt;
        font-size: 14px;
        font-weight: normal;
     }
     .center-manage {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
`
export const InputFilterBox = styled.div`
    position: relative;
    input {
        height: 40px;
        border-radius: 4px;
        border: solid 2px #ddd;
        background-color: #fff;
        padding: 0 8px;
        font-size: 18px;
        font-family: Prompt;
        font-weight: 300;
        margin: auto;
    }
    .input-icon { 
        margin: 0;
        position: absolute;
        top: 50%;
        right: 0px;
        -ms-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
        display: flex;
        align-items: center;
        img {
            width: 24px !important;
            height: auto !important;
            object-fit: contain !important;
        }
    }
`
export const InputRowBox = styled.div`
    display: flex;
    margin-top: 24px;
    align-items: center;
    label {
        display: flex;
        align-items: center;
        justify-content: flex-end; 
        @media (max-width: 576px) {
            justify-content: flex-start; 
        }
    }
    input {
        margin: auto;
    }
    @media (max-width: 576px) {
        flex-direction: column;
        align-items: flex-start;
     }
 `

export const TitleBottomLine = styled.div`
    display: flex;
    align-items: center;
    justify-content: space-between;
    border-bottom: solid 1px #e1e1e1;
 `

export const AddFromBox = styled.div`
    width: 100%;
    padding: 16px;
    border-radius: 4px;
    border: solid 1px #ddd;
    background-color: #f9f9f9;
    margin-top: 24px;
    .title-box {
        display: flex;
        align-items: center;
        justify-content: space-between;
        margin-bottom: 15px;
    }
    label {
        font-family: Prompt;
        font-size: 16px;
        font-weight: 600;
    }
    .input-icon {
        width: 20px !important;
        height: auto !important;
        object-fit: contain !important;
    }
    @media (max-width: 576px) {
        margin-top: 16px;
    }
 `

export const ValidNameStyle = styled.span`
    padding-left: 8px;
    color: #ff0000;
 `

export const EmbedFilePDF = styled.div`
    display: flex; 
    justify-content: center;
    margin: 16px 0;
    embed {
        height: 700px;
        width: 500px;
        @media (max-width: 768px) {
            height: 400px;
            width: 400px;
        }
    }
 `

export const FilePDFStyle = styled.div`
    display: flex; 
    justify-content: center;
    padding: 16px 0;
    position: relative;
    height: 750px;
 `
export const FilePagePDFStyle = styled.div`
    width: 160px;
    height: 40px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    background-color: #fff;
    position: absolute;
    bottom: 20px;
    display: flex; 
    justify-content: center;
    align-items: center;
    border-radius: 6px;
    .page-number{
        width: 80px;
        height: 40px;
        display: flex; 
        justify-content: center;
        align-items: center;
    }
    .click-next {
        width: 40px;
        height: 40px;
        display: flex; 
        justify-content: center;
        align-items: center;
        cursor: pointer;
        :hover {
            background-color: #ef7285;
            color: #fff;
            border-radius: 6px;
        }
    }
 `

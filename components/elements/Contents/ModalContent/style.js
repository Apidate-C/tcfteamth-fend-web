import styled from 'styled-components'

export const ModalStyle = styled.div`
    padding: 20px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    height: 200px;
    flex-direction: column;
    .title {
        font-size: 28px;
        font-weight: 400;
        margin: auto;
    }
    .button-row {
        display:flex;
        .confirm {
            border: none;
            height: 40px;
            margin: 0 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            padding: 13px 24px;
            border-radius: 4px;
            span {
                color: #fff;
                font-family: Prompt;
                font-size: 16px;
            }
            &.register {
                background-color: green !important;
            }
            &.delete {
                background-color: red !important;
            }
            &.default {
                background-color: grey !important;
            }
        }
    }
`
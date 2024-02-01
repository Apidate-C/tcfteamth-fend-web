import styled from 'styled-components'

export const MenuWrapper = styled.div`
    height: 70px;
    background: linear-gradient(to right, #638287 50%, #fff 50%);
    position: sticky;
    top: 0;
    z-index: 1;
`
export const MenuWrapperMobile = styled.div`
    height: 70px;
    background-color: #fff;
    position: sticky;
    top: 0;
    z-index: 3;
`
export const Container = styled.div`
    max-width: 1320px;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
`
export const ContainerMobile = styled.div`
    padding: 0px 16px;
`
export const HeaderRow = styled.div`
    display: flex;
    height: 70px;
    align-items: center;
    .logo {
        margin-right: 3rem;
        img { 
            width: auto !important;
            height: 70px !important;
            object-fit: contain !important;
        }
    }
    .menu-bg {
        width: 87px;
        height: 70px;
        background: linear-gradient(to bottom left, #fff 0%, #fff 50%, #638287 50%, #638287 100%);
    }
    ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        li {
            padding: 0 10px;
            position: relative;
            a {
                cursor: pointer;
                
            }
           .menu-link {
                font-weight: 500 !important;
            }
            .menu-link div:hover:after {
                content: '';
                position: absolute;
                background-image: url(../../../../static/images/title-bg.svg);
                background-repeat: no-repeat;
                background-position: center center;
                top: 50%;
                left: 50%;
                margin-top: 14px;
                width: 80%;
                height: 10px;
                background-size: 100% 10px;
                transform: translate( -50%, -50% );
                -webkit-transition: opacity .2s linear;
                -o-transition: opacity .2s linear;
                transition: opacity .2s linear;
            }
        }
        li.dropdown {
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 200px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
            top: 30px;
          }
          
          .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
          }
          
          .dropdown-content a:hover {background-color: #f1f1f1;}
          
          .dropdown:hover .dropdown-content {
            display: block;
          }
    }
    .menu-items {
        height: 70px;
        background-color: #fff;
        width: 100%;
        display: flex;
        align-items: center;
    }
`

export const HeaderRowMobile = styled.div`
    display: flex;
    height: 70px;
    align-items: center;
    justify-content: space-between;
    .logo {
        background-color: #638287;
        img { 
            width: auto !important;
            height: 70px !important;
            object-fit: contain !important;
        }
    }
    .right {
        display: flex;
        align-items: center;
        .icon-hamberger-menu {
            margin-left: 20px;
            display: flex;
            align-items: center;
            img {
                width: 20px !important;
                height: auto !important;
                object-fit: contain !important;
            }
        }
    }
`

export const TopNavComponent = styled.section`
    display: flex;
    align-items: center;
    justify-content: space-between;
    background-color: #fff;
    height: 70px;
    z-index: 2;
  
    .logo {
        background-color: #638287;
        img { 
            width: auto !important;
            height: 70px !important;
            object-fit: contain !important;
        }
    }

    .right {
        display: flex;
        align-items: center;
        .menu-style {
            margin-left: 10px;
        }
    }

    .menu {
        display: flex;
        flex-direction: row;
        list-style-type: none;
        margin: 0;
        padding: 0;
    }
  
    .menu > li {
        margin: 0 1rem;
    }
  
    .menu-button-container {
        display: none;
        height: 100%;
        width: 30px;
        cursor: pointer;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
  
    #menu-toggle {
        display: none;
    }
  
    .menu-button,
    .menu-button::before,
    .menu-button::after {
        display: block;
        background-color: #000;
        position: absolute;
        height: 3px;
        width: 22px;
        transition: transform 400ms cubic-bezier(0.23, 1, 0.32, 1);
        border-radius: 2px;
    }
  
    .menu-button::before {
        content: '';
        margin-top: -8px;
    }
  
    .menu-button::after {
        content: '';
        margin-top: 8px;
    }
    
    #menu-toggle:checked + .menu-button-container .menu-button::before {
        margin-top: 0px;
        transform: rotate(405deg);
    }
    
    #menu-toggle:checked + .menu-button-container .menu-button {
        background: rgba(255, 255, 255, 0);
    }
  
    #menu-toggle:checked + .menu-button-container .menu-button::after {
        margin-top: 0px;
        transform: rotate(-405deg);
    }
  
    @media (max-width: 768px) {
        .menu-button-container {
            display: flex;
        }
        .menu {
            position: absolute;
            top: 0;
            margin-top: 50px;
            left: 0;
            flex-direction: column;
            width: 100%;
            justify-content: center;
            align-items: center;
            z-index: -1;
        }
        #menu-toggle ~ .menu li {
            height: 0;
            margin: 0;
            padding: 0;
            border: 0;
            transition: height 400ms cubic-bezier(0.23, 1, 0.32, 1);
        }
        #menu-toggle:checked ~ .menu li {
            height: 2.5em;
            padding: 0.5em;
            transition: height 400ms cubic-bezier(0.23, 1, 0.32, 1);
        }
        #menu-toggle:checked ~ .menu li:first-child {
            margin-top: 20px;
        }
        .menu > li {
            display: flex;
            justify-content: center;
            margin: 0;
            padding: 0.5em 0;
            width: 100%;
            color: #000;
            background-color: #fff;
        }
        .menu > li:not(:last-child) {
            border-bottom: 1px solid #444;
        }
    }
`
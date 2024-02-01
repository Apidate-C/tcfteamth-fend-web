import React from 'react'
import Image from 'next/image'
import { MenuWrapper, MenuWrapperMobile, Container, ContainerMobile, HeaderRow, HeaderRowMobile, TopNavComponent } from './style'
import { DesktopOnly, MobileOnly, ButtonTheme } from '../../../styles/global'

import logo from '../../../../static/images/logo.png'
import iconHamberger from '../../../../static/images/icon-hamberger-menu.png'
import Link from 'next/link'

const MenuContent = (props) => {
    return (
        <>
            <DesktopOnly>
                <MenuWrapper>
                    <Container>
                        <HeaderRow>
                            <div className='logo'>
                                <Image src={logo} alt={`logo`}/>
                            </div>
                            <div className='menu-bg' />
                            <ul className='menu-items'>
                                <li>
                                    <a className='menu-link' href='https://fendfoundation.com/web/index.php?lang=th'>
                                        <div>หน้าหลัก</div>
                                    </a>
                                </li>
                                <li className='dropdown'>
                                    <a className='dropbtn menu-link'>
                                        <div>ลงทะเบียนผู้ป่วย</div>
                                    </a>
                                    <div className='dropdown-content'>
                                        <Link  href='/web/register-myself' passHref><a>ลงทะเบียนด้วยตัวเอง</a></Link>
                                        <Link  href='/web/register-child' passHref><a>ลงทะเบียนให้เด็ก</a></Link>
                                    </div>
                                </li>
                                <li>
                                    <a className='menu-link' href='https://fendfoundation.com/web/events.php?lang=th'>
                                        <div>กิจกรรม</div>
                                    </a>
                                </li>
                                <li>
                                    <a className='menu-link' href='https://fendfoundation.com/web/volunteer.php?lang=th'>
                                        <div>อาสาสมัคร</div>
                                    </a>
                                </li>
                                <li>
                                    <a className='menu-link' href='https://fendfoundation.com/web/contact.php?lang=th'>
                                        <div>ติดต่อเรา</div>
                                    </a>
                                </li>
                            </ul>
                        </HeaderRow>
                    </Container>
                </MenuWrapper>
            </DesktopOnly>
            <MobileOnly>
                <MenuWrapperMobile>
                    <ContainerMobile>
                        {/* <HeaderRowMobile>
                            <div className='logo'>
                                <Image src={logo} />
                            </div>
                            <div className='right'>
                                <a href='https://fendfoundation.com/web/donate.php?lang=th'>
                                    <ButtonTheme>
                                        <span>บริจาค</span>
                                    </ButtonTheme>
                                </a>
                                <div className='icon-hamberger-menu'>
                                    <Image src={iconHamberger} />
                                </div>
                            </div>
                        </HeaderRowMobile> */}
                        <TopNavComponent>
                            <div className='logo'>
                                <Image src={logo} />
                            </div>
                            <div className='right'>
                                <a href='https://fendfoundation.com/web/donate.php?lang=th'>
                                    <ButtonTheme>
                                        <span>บริจาค</span>
                                    </ButtonTheme>
                                </a>
                                <div className='menu-style'>
                                    <input id="menu-toggle" type="checkbox" />
                                    <label className='menu-button-container' htmlFor='menu-toggle'>
                                        <div className='menu-button'></div>
                                    </label>
                                    <ul className='menu'>
                                        <li>
                                            <a href='https://fendfoundation.com/web/index.php?lang=th'>
                                                <div>หน้าหลัก</div>
                                            </a>
                                        </li>
                                        <li>
                                            <Link href='/web/register-myself' passHref>
                                                <a>
                                                    <div>ลงทะเบียนด้วยตัวเอง</div>
                                                </a>
                                            </Link>
                                           
                                        </li>
                                        <li>
                                            <Link href='/web/register-child' passHref>
                                                <a>
                                                    <div>ลงทะเบียนให้เด็ก</div>
                                                </a>
                                            </Link>
                                        </li>
                                        <li>
                                            <a href='https://fendfoundation.com/web/events.php?lang=th'>
                                                <div>กิจกรรม</div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href='https://fendfoundation.com/web/volunteer.php?lang=th'>
                                                <div>อาสาสมัคร</div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href='https://fendfoundation.com/web/contact.php?lang=th'>
                                                <div>ติดต่อเรา</div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </TopNavComponent>
                    </ContainerMobile>
                </MenuWrapperMobile>
            </MobileOnly>
            {props.children}
        </>
    )
}

export default MenuContent
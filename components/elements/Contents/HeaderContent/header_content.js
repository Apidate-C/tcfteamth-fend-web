import React from 'react'
import { WrapperHeader, Profile, Logout } from './style'
import Image from 'next/image'
import { useCookies } from 'react-cookie'
import Cookies from 'js-cookie'
import { useRouter } from 'next/router'
import _ from 'lodash'

import userMock from '../../../../static/images/user-mock.png'
import iconLogout from '../../../../static/images/icon-logout-black.png'

const HeaderContent = () => {
    const router = useRouter()
    const [cookieToken, setCookieToken] = useCookies(["userId", "accessToken", "firstName", "lastName", "profileImagePath"])

    const handleLogout = () => {
        Cookies.remove('userId')
        Cookies.remove('accessToken')
        Cookies.remove('firstName')
        Cookies.remove('lastName')
        Cookies.remove('profileImagePath')
        router.push('/admin')
    }

    return (
        <WrapperHeader>
            <Profile>
                {
                    cookieToken.profileImagePath && cookieToken.profileImagePath !== 'null' ?
                        <Image src={cookieToken.profileImagePath} />
                        :
                        <Image src={userMock} />
                }
                <span>{cookieToken.firstName} {cookieToken.lastName}</span>
            </Profile>
            <Logout onClick={() => handleLogout()}>
                <span>ออกจากระบบ</span>
                <Image src={iconLogout} />
            </Logout>
        </WrapperHeader>
    )
}

export default HeaderContent
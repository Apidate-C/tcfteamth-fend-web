import React, { useEffect, useState } from 'react';
import { BackgroundLogin, WrapperLogin, LoginBox, InputBox, ButtonTheme } from '../../components/styles/global'
import Image from 'next/image'
import { apiGatewayInstance } from '../../helpers/utils'
import { checkValidate } from '../../helpers/checkValidate'
import { InputContent } from '../../components/elements'
import { useCookies } from 'react-cookie'
import Cookies from 'js-cookie'
import { useRouter } from 'next/router'
import Loader from 'react-loader-spinner'

import logo from '../../static/images/logo.png'

const LoginScreen = () => {
    const router = useRouter()
    const [username, setUsername] = useState()
    const [password, setPassword] = useState()
    const [statusValidate, setStatusValidate] = useState(false)
    const [errorMessage, setErrorMessage] = useState('')
    // const [cookieToken, setCookieToken] = useCookies(["userId", "accessToken", "firstName", "lastName", "profileImagePath"])
    const [loader, setLoader] = useState(false)

    useEffect(() => {
        setErrorMessage('')
    }, [username, password])

    const handleLoginSubmit = () => {

        if (!username || !password) {
            setStatusValidate(true)
        }

        const formData = new FormData()
        formData.append('username', username)
        formData.append('password', password)
        formData.append('by_pass', true)

        setLoader(true)
        apiGatewayInstance.post('/api/auth/login', formData)
            .then((response) => {

                if (response.data) {
                    const { token = '', user = '' } = response.data || {}

                    if (token) {
                        Cookies.set('userId', token.userId)
                        Cookies.set('accessToken', token.hash)
                        Cookies.set('firstName', user.firstName)
                        Cookies.set('lastName', user.lastName)
                        Cookies.set('profileImagePath', user.profileImagePath)
                        Cookies.set('roleName', user.roles && user.roles[0].roleName.toLowerCase())
                        router.push('/admin/register-list')
                    }
                }
            })
            .catch((error) => {
                setLoader(false)
                console.error(error)
                if (username && password) {
                    setErrorMessage('ชื่อผู้ใช้งาน หรือรหัสผ่านของคุณไม่ถูกต้อง')
                }
            })
    }

    return (
        <>
            <BackgroundLogin>
                <WrapperLogin>
                    <div className='logo-image-style'>
                        <Image src={logo} />
                    </div>
                    <h1>ระบบจัดการผู้ป่วย</h1>
                    <LoginBox>
                        <h3>เข้าสู่ระบบ</h3>
                        <InputContent
                            placeholder={'ชื่อผู้ใช้งาน'}
                            value={username}
                            setValue={setUsername}
                            require={checkValidate(username, statusValidate)}
                            validName={'โปรดระบุชื่อผู้ใช้งาน'}
                        />
                        <div className='mt-22'>
                            <InputContent
                                type={'password'}
                                placeholder={'รหัสผ่าน'}
                                value={password}
                                setValue={setPassword}
                                require={checkValidate(password, statusValidate)}
                                validName={'โปรดระบุรหัสผ่าน'}
                            />
                        </div>
                        <div className='text-error'>
                            {errorMessage && <span>{errorMessage}</span>}
                        </div>
                        <div className='mt-22'>
                            {
                                !loader ? (
                                    <ButtonTheme style={{ margin: 'auto' }} onClick={() => handleLoginSubmit()}>
                                        <span>เข้าสู่ระบบ</span>
                                    </ButtonTheme>
                                )
                                    : (
                                        <ButtonTheme style={{ margin: 'auto' }}>
                                            <Loader
                                                type="Rings"
                                                color="#ffffff"
                                                height={60}
                                                width={60}
                                            />
                                        </ButtonTheme>
                                    )
                            }
                        </div>
                    </LoginBox>
                </WrapperLogin>
            </BackgroundLogin>
        </>
    )
}

export default LoginScreen
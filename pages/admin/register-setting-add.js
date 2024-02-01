import React, { useState, useEffect } from 'react'
import Image from 'next/image'
import {
    BackgroundAdmin,
    DesktopOnly,
    TabHeader,
    WrapperFromAdmin,
    SectionBox,
    TitleBottomLine,
    InputRowBox,
    LabelTitle,
    SelectBox,
    ButtonTheme,
    ValidNameStyle
} from '../../components/styles/global'
import { checkValidate } from '../../helpers/checkValidate'
import { HeaderContent, TitleContent, InputContent, ModalConfirmContent } from '../../components/elements'
import { apiGatewayInstance } from '../../helpers/utils'
import { useCookies } from 'react-cookie'
import { useRouter } from 'next/router'
import Loader from 'react-loader-spinner'

const RegisterSettingAddScreen = () => {
    const router = useRouter()
    const [cookieToken, setCookieToken] = useCookies(["userId", "accessToken"])
    const [statusValidate, setStatusValidate] = useState(false)
    const [showModal, setShowModal] = useState(false)
    const [firstName, setFirstName] = useState('')
    const [lastName, setLastName] = useState('')
    const [telephoneNumber, setTelephoneNumber] = useState('')
    const [position, setPosition] = useState('')
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const [passwordConfirm, setPasswordConfirm] = useState('')
    const [loader, setLoader] = useState(false)
    const [role, setRole] = useState(null)
    const [roleList, setRoleList] = useState([{ roleId: "", roleName: "โปรดเลือก" }])

    useEffect(() => {
        if (!cookieToken.accessToken) {
            router.push('/admin')
        }
        fetchRoleData()
    }, [])

    const handleSubmitRegister = () => {
        setStatusValidate(true)
        if (!firstName) return null
        if (!lastName) return null
        if (!telephoneNumber) return null
        if (!position) return null
        if (!email) return null
        if (!password) return null
        if (!passwordConfirm) return null
        if (!role) return null

        if (password === passwordConfirm) {
            const formData = new FormData()
            formData.append('email', email)
            formData.append('first_name', firstName)
            formData.append('last_name', lastName)
            formData.append('phone_number', telephoneNumber)
            formData.append('position', position)
            formData.append('password', password)
            formData.append('role_id', parseInt(role))
            setLoader(true)
            apiGatewayInstance.post('/api/admin/account/create', formData, {
                headers: {
                    'X-Auth-Token': cookieToken.accessToken
                }
            })
                .then(response => {
                    if (response.data) {
                        setLoader(false)
                        setShowModal(true)
                    }
                })
                .catch(error => {
                    setLoader(false)
                    console.error(error)
                })
        }
    }

    const handleConfirmModal = () => {
        router.push('/admin/register-setting')
    }

    const fetchRoleData = () => {
        apiGatewayInstance.post(
            `/api/admin/role/list?page=0&size=100&order=desc`,
            {},
            {
                'headers': {
                    'X-Auth-Token': cookieToken.accessToken
                }
            }
        )
            .then((resp) => {
                const roleListData = roleList.concat(resp.data)
                setRoleList(roleListData)
            })
            .catch((error) => {
                console.error(error)
            })
    };

    return (
        <BackgroundAdmin>
            <DesktopOnly>
                <HeaderContent />
            </DesktopOnly>
            <TabHeader>
                <div>{`ตั้งค่าผู้ใช้งาน > `}<span className='current-page'>เพิ่มผู้ใช้งาน</span></div>
            </TabHeader>
            <div className='p-24'>
                <ModalConfirmContent
                    isOpenModal={showModal} title={`เพิ่มผู้ใช้งานเรียบร้อยแล้ว`}
                    status={`register`}
                    confirmModal={() => handleConfirmModal()}
                    closeModal={() => handleConfirmModal()}
                />
                <WrapperFromAdmin>
                    <SectionBox>
                        <TitleBottomLine>
                            <TitleContent title={'รายละเอียดผู้ใช้งาน'} positionLine={'bottom'} />
                        </TitleBottomLine>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>ชื่อ *</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='โปรดระบุ' /> */}
                                <InputContent
                                    placeholder={'โปรดระบุ'}
                                    value={firstName}
                                    setValue={setFirstName}
                                    require={checkValidate(firstName, statusValidate)}
                                    validName={'โปรดระบุ'}
                                />
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>นามสกุล *</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='โปรดระบุ' /> */}
                                <InputContent
                                    placeholder={'โปรดระบุ'}
                                    value={lastName}
                                    setValue={setLastName}
                                    require={checkValidate(lastName, statusValidate)}
                                    validName={'โปรดระบุ'}
                                />
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>ตำแหน่ง *</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='โปรดระบุ' /> */}
                                <InputContent
                                    // label={'เบอร์โทรศัพท์ (Telephone Number) *'}
                                    placeholder={'โปรดระบุ'}
                                    value={position}
                                    setValue={setPosition}
                                    require={checkValidate(position, statusValidate)}
                                    validName={'โปรดระบุ'}
                                />
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>เบอร์โทรศัพท์ *</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='โปรดระบุ' /> */}
                                <InputContent
                                    // label={'เบอร์โทรศัพท์ (Telephone Number) *'}
                                    type={'number'}
                                    maxLength={'10'}
                                    placeholder={'e.g. 0901234567'}
                                    value={telephoneNumber}
                                    setValue={setTelephoneNumber}
                                    require={checkValidate(telephoneNumber ? telephoneNumber.toString() : '', statusValidate)}
                                    validName={'โปรดระบุ'}
                                />
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>สิทธิการใช้งาน *</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                <SelectBox
                                    value={role}
                                    require={checkValidate(role, statusValidate)}
                                    onChange={(e) => {
                                        setRole(e.target.value)
                                    }}
                                    validName={'โปรดระบุ'}
                                >
                                    {
                                        roleList.map(role => {
                                            return (
                                                <option key={`role_${role.roleId}`} value={role.roleId}>{role.roleName}</option>
                                            )
                                        })
                                    }
                                </SelectBox>
                            </div>
                        </InputRowBox>
                    </SectionBox>
                    <SectionBox>
                        <TitleBottomLine>
                            <TitleContent title={'ตั้งค่าการเข้าใช้งาน'} positionLine={'bottom'} />
                        </TitleBottomLine>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>อีเมล์ *</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='โปรดระบุ' /> */}
                                <InputContent
                                    // label={`อีเมล (Email)`}
                                    type={'email'}
                                    placeholder={'โปรดระบุ'}
                                    value={email}
                                    setValue={setEmail}
                                    require={checkValidate(email, statusValidate)}
                                    validName={'โปรดระบุ'}
                                    validNameType={'รูปแบบอีเมลไม่ถูกต้อง'}
                                />
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>พาสเวิร์ด *</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='โปรดระบุ' /> */}
                                <InputContent
                                    type={'password'}
                                    placeholder={'โปรดระบุ'}
                                    value={password}
                                    setValue={setPassword}
                                    require={checkValidate(password, statusValidate)}
                                    validName={password !== passwordConfirm ? '' : 'โปรดระบุ'}
                                />
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>ยืนยันพาสเวิร์ด *</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='โปรดระบุ' /> */}
                                <InputContent
                                    type={'password'}
                                    placeholder={'โปรดระบุ'}
                                    value={passwordConfirm}
                                    setValue={setPasswordConfirm}
                                    require={checkValidate(passwordConfirm, statusValidate)}
                                    validName={password !== passwordConfirm ? '' : 'โปรดระบุ'}
                                />
                                {password !== passwordConfirm && statusValidate ? <ValidNameStyle>{`รหัสผ่านไม่ตรงกัน`}</ValidNameStyle> : null}
                                {password.length < 6 && statusValidate ? <ValidNameStyle>{`รหัสผ่านต้องมีจำนวน 6 ตัวขึ้นไป`}</ValidNameStyle> : null}
                            </div>
                        </InputRowBox>
                    </SectionBox>
                    <SectionBox>
                        <div className='mt-22'>
                            {
                                !loader ? (
                                    <ButtonTheme style={{ margin: 'auto' }} backgroundColor={'#7bb453'} onClick={() => handleSubmitRegister()}>
                                        <span>บันทึก</span>
                                    </ButtonTheme>
                                )
                                    : (
                                        <ButtonTheme style={{ margin: 'auto' }} backgroundColor={'#7bb453'} disabled>
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
                    </SectionBox>
                </WrapperFromAdmin>
            </div>
        </BackgroundAdmin>
    )
}

export default RegisterSettingAddScreen
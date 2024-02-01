import React, { useState, useEffect } from 'react'
import { HeaderContent, TableContent, ModalConfirmContent, PaginationContent } from '../../components/elements'
import { TabHeader, ButtonTheme, BackgroundAdmin, TableStyle, WrapperTable, BackgroundEdit, BackgroundDelete, DesktopOnly, MobileOnly, TableMobileStyle } from '../../components/styles/global'
import Image from 'next/image'
import { useCookies } from 'react-cookie'
import { useRouter } from 'next/router'
import { apiGatewayInstance } from '../../helpers/utils'

import logoSetting from '../../static/images/icon-register-setting.png'
import logoEdit from '../../static/images/icon-edit.png'
import logoDelete from '../../static/images/icon-delete.png'
import Link from 'next/link'

const RegisterSettingScreen = ({ }) => {
    const router = useRouter()
    const [cookieToken, setCookieToken] = useCookies(["userId", "accessToken"])
    const [showModal, setShowModal] = useState(false)
    const [id, setId] = useState('')
    const [adminList, setAdminList] = useState([])
    const [searchList, setSearchList] = useState('')
    const [totalPages, setTotalPages] = useState(0)
    const [currentPage, setCurrentPage] = useState(1)

    useEffect(() => {
        if (!cookieToken.accessToken) {
            router.push('/admin')
        }
    }, [])

    useEffect(() => {
        const getDataAdminList = async () => {
            const { content = [], totalPages = 0 } = await getAdminList(1, 10, searchList) || {}
            setAdminList(content)
            setTotalPages(totalPages)
        }
        getDataAdminList()
    }, [searchList])

    const getAdminList = async (page = 1, size = 10, search = '') => {
        if (cookieToken.accessToken) {
            const response = await apiGatewayInstance.post(`/api/admin/account/list_all?page=${page}&size=${size}&search=${search}`, {}, { 'headers': { 'X-Auth-Token': cookieToken.accessToken } })
            return response.data ? response.data : []
        }
    }

    const onClickPagination = async (page) => {
        const { content = [], totalPages = 0 } = await getAdminList(page, 10, searchList) || {}
        setAdminList(content)
        setTotalPages(totalPages)
        setCurrentPage(page)
    }


    const handleDeleteUser = () => {
        const formData = new FormData()
        formData.append('user_id', id)

        apiGatewayInstance.post('/api/admin/account/delete', formData, {
            headers: {
                'X-Auth-Token': cookieToken.accessToken
            }
        })
            .then(() => {
                window.location.reload()
            })
            .catch((error) => {
                console.error(error)
            })
    }


    const handleConfirm = (id) => {
        setShowModal(true)
        setId(id)
    }

    const handleCancle = () => {
        setShowModal(false)
    }

    return (
        <BackgroundAdmin>
            <DesktopOnly>
                <HeaderContent />
            </DesktopOnly>
            <TabHeader>
                <span>ตั้งค่าผู้ใช้งาน</span>

                <Link href='/admin/register-setting-add' passHref>
                    <ButtonTheme>
                        <Image src={logoSetting} alt={`logoSetting`}/>
                        <span>เพิ่มผู้ใช้งาน</span>
                    </ButtonTheme>
                </Link>
            </TabHeader>
            <div className='p-24'>
                <ModalConfirmContent
                    isOpenModal={showModal} title={`ต้องการลบข้อมูลผู้ใช้งานหรือไม่`}
                    status={`delete`}
                    confirmModal={() => handleDeleteUser()}
                    closeModal={() => handleCancle()}
                />
                <WrapperTable>
                    <TableContent
                        placeholder={'ชื่อ นามสกุล'}
                        value={searchList}
                        setValue={setSearchList}
                    />
                    <DesktopOnly>
                        <TableStyle>
                            <table>
                                <thead>
                                    <tr>
                                        <td>ID</td>
                                        <td>ชื่อ - นามสกุล</td>
                                        <td>ตำแหน่ง</td>
                                        <td>อีเมล์</td>
                                        <td>เบอร์โทรศัพท์</td>
                                        <td>จัดการ</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    {
                                        adminList && adminList.length > 0 && adminList.map((item, index) => (
                                            <tr key={index}>
                                                <td>{item.userId}</td>
                                                <td>{item.firstName} {item.lastName}</td>
                                                <td>{item.position}</td>
                                                <td>{item.email}</td>
                                                <td>{item.phoneNumber}</td>
                                                <td>
                                                    <div className='row m-auto'>
                                                        <a href={`/admin/register-setting-edit?userId=${item.userId}`}>
                                                            <BackgroundEdit className='mr-8'>
                                                                <Image src={logoEdit} />
                                                            </BackgroundEdit>
                                                        </a>
                                                        <BackgroundDelete onClick={() => handleConfirm(item.userId)}>
                                                            <Image src={logoDelete} />
                                                        </BackgroundDelete>
                                                    </div>
                                                </td>
                                            </tr>
                                        ))
                                    }
                                </tbody>
                            </table>
                        </TableStyle>
                    </DesktopOnly>
                    <MobileOnly>
                        <TableMobileStyle>
                            {
                                adminList && adminList.length > 0 && adminList.map((item, index) => (
                                    <div className='bg-box row' key={index}>
                                        <div className='col-9'>
                                            <div>
                                                <div className='title'>ชื่อ - นามสกุล</div>
                                                <div className='text'>{item.firstName} {item.lastName}</div>
                                            </div>
                                            <div className='mt-18'>
                                                <div className='title'>ตำแหน่ง</div>
                                                <div className='text'>{item.position}</div>
                                            </div>
                                            <div className='mt-18'>
                                                <div className='title'>อีเมล์</div>
                                                <div className='text'>{item.email}</div>
                                            </div>
                                            <div className='mt-18'>
                                                <div className='title'>เบอร์โทรศัพท์</div>
                                                <div className='text'>{item.phoneNumber}</div>
                                            </div>
                                        </div>
                                        <div className='col-3'>
                                            <div className='center-manage'>
                                                <div className='title'>จัดการ</div>
                                                <div className='row'>
                                                    <a href={`/admin/register-setting-edit?userId=${item.userId}`}>
                                                        <BackgroundEdit className='mr-8'>
                                                            <Image src={logoEdit} />
                                                        </BackgroundEdit>
                                                    </a>
                                                    <BackgroundDelete onClick={() => handleConfirm(item.userId)}>
                                                        <Image src={logoDelete} />
                                                    </BackgroundDelete>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                ))
                            }
                        </TableMobileStyle>
                    </MobileOnly>
                </WrapperTable>
                <div className='mt-22'>
                    <PaginationContent currentPage={currentPage} totalPages={totalPages} onClickPagination={onClickPagination} />
                </div>
            </div>
        </BackgroundAdmin>
    )
}

// export async function getServerSideProps({ req }) {

//     const { cookie = '' } = req.headers

//     let Cookies = {}

//     cookie && cookie.split(';').forEach(function (cookie) {
//         let parts = cookie.split('=');
//         Cookies[parts[0].trim()] = (parts[1] || '').trim();
//     })

//     const response = await apiGatewayInstance.post('/api/admin/account/list_all', {}, { 'headers': { 'X-Auth-Token': Cookies.accessToken } })

//     let data = response.data ? response.data : []

//     return { props: { tableBodyData: data } }
// }


export default RegisterSettingScreen
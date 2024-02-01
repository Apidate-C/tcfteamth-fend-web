import React, { useState, useEffect } from 'react'
import Image from 'next/image'
import { useFileUpload } from 'use-file-upload'
import DatePicker from 'react-datepicker'
import {
    WrapperFromAdmin,
    BackgroundAdmin,
    DesktopOnly,
    TabHeader,
    SectionBox,
    InputBox,
    LabelTitle,
    InputRowBox,
    FlexStyleUploadFile,
    ButtonUploadFile,
    InputFilterBox,
    ButtonTheme,
    TitleBottomLine,
    AddFromBox,
    BackgroundDelete,
    RadioBox,
    ValidNameStyle,
    SelectBox,
    FilePDFStyle
} from '../../components/styles/global'
import { HeaderContent, TitleContent, InputContent, InputFilterContent, ModalConfirmContent } from '../../components/elements'
import { checkValidate } from '../../helpers/checkValidate'
import { handleUploadFile } from '../../helpers/handleUploadFile'
import { apiGatewayInstance } from '../../helpers/utils'
import { pdpaVersion } from "../../config";
import { useRouter } from 'next/router'
import Loader from 'react-loader-spinner'
import { useCookies } from 'react-cookie'
import moment from 'moment'
import { Viewer, Worker, SpecialZoomLevel } from '@react-pdf-viewer/core';

import iconUpload from '../../static/images/icon-upload.png'
import iconAdd from '../../static/images/icon-add.png'
import iconDelete from '../../static/images/icon-delete.png'
import iconUploadBack from '../../static/images/icon-upload-back.png'

const RegisterListAddScreen = () => {
    const router = useRouter()
    const [cookieToken, setCookieToken] = useCookies(["userId", "accessToken", "firstName", "lastName"])
    const [fileBloodDocument, selectFileBloodDocument] = useFileUpload()
    const [fileCardCopy, selectFileCardCopy] = useFileUpload()
    const [fileContract, selectFileContract] = useFileUpload()
    const [fileConsent, selectFileConsent] = useFileUpload()
    const [dataDeviceInformation, setDataDeviceInformation] = useState([])
    const [dataResearchProject, setDataResearchProject] = useState([])
    const [statusValidate, setStatusValidate] = useState(false)
    const [firstName, setFirstName] = useState('')
    const [lastName, setLastName] = useState('')
    const [telephoneNumber, setTelephoneNumber] = useState('')
    const [dateOfbirth, setDateOfbirth] = useState('')
    const [age, setAge] = useState(0)
    const [identificationNumber, setIdentificationNumber] = useState('')
    const [diagnosis, setDiagnosis] = useState('')
    const [nameOfHospitalReceivingTreatment, setNameOfHospitalReceivingTreatment] = useState('')
    const [primaryDoctorName, setPrimaryDoctorName] = useState('')
    const [hospitalOrDoctorTelephoneNumber, setHospitalOrDoctorTelephoneNumber] = useState('')
    const [otherUnderlyingDiseases, setOtherUnderlyingDiseases] = useState('')
    const [neuromuscularDiseaseBloodTest, setNeuromuscularDiseaseBloodTest] = useState('')
    const [neuromuscularDiseaseBloodTestResultsConfirmation, setNeuromuscularDiseaseBloodTestResultsConfirmation] = useState('')
    const [doesThePatientHaveADisabilityIDCard, setDoesThePatientHaveADisabilityIDCard] = useState('')
    const [copyOfDisabilityIDCard, setCopyOfDisabilityIDCard] = useState('')
    const [howCanHelp, setHowCanHelp] = useState('')
    const [email, setEmail] = useState('')
    const [consent, setConsent] = useState(false)
    const [other, setOther] = useState('')
    const [parentFirstName, setParentFirstName] = useState('')
    const [parentLastName, setParentLastName] = useState('')
    const [parentRelevancy, setParentRelevancy] = useState('')
    const [parentTelephoneNumber, setParentTelephoneNumber] = useState('')
    const [showModal, setShowModal] = useState(false)
    const [loader, setLoader] = useState(false)
    const [deviceFileContract, setDeviceFileContract] = useState('')
    const [consentVersion, setConsentVersion] = useState(pdpaVersion)

    useEffect(() => {
        if (!cookieToken.accessToken) {
            router.push('/admin')
        }
    }, [])

    const onClickAddDevice = () => {
        // const id = Math.floor(Math.random() * 10000)

        const itemData = {
            // id,
            researchName: '',
            contractFile: '',
            consentFile: '',
            remark: '',
            receiveDate: '',
            getBackDate: ''
        }

        setDataDeviceInformation([...dataDeviceInformation, itemData])
    }

    const onClickRemoveDevice = (id) => {
        const data = dataDeviceInformation.filter((item, index) => index !== id)

        setDataDeviceInformation(data)
    }

    const onClickAddResearchProject = () => {
        // const id = Math.floor(Math.random() * 10000)

        const itemData = {
            // id,
            researchName: '',
            joinDate: '',
            researchOwner: '',
            researchContact: '',
            researchTelephone: '',
            researchRemark: '',
            receiveDate: '',
            getBackDate: ''
        }

        setDataResearchProject([...dataResearchProject, itemData])
    }

    const onClickRemoveResearchProject = (id) => {
        const data = dataResearchProject.filter((item, index) => index !== id)

        setDataResearchProject(data)
    }

    const handleUploadFileBloodDocument = async (file) => {
        const fileUrl = await handleUploadFile(file)
        setNeuromuscularDiseaseBloodTestResultsConfirmation(fileUrl)
    }

    const handleUploadFileIDCard = async (file) => {
        const fileUrl = await handleUploadFile(file)
        setCopyOfDisabilityIDCard(fileUrl)
    }

    const handleUploadFileContract = async (file, id, name) => {
        const fileUrl = await handleUploadFile(file)
        const item = {
            id: id,
            name: name,
            value: fileUrl
        }

        const newItem = dataDeviceInformation.map((itemList, index) => {
            for (const key in itemList) {
                if (key === item.name && parseInt(index, 10) === parseInt(item.id, 10)) {
                    itemList[key] = item.value
                }
            }

            return itemList
        })

        setDeviceFileContract(file)
        setDataDeviceInformation(newItem)
    }

    const handleSubmitRegister = () => {
        const formatDateOfbirth = dateOfbirth ? moment(dateOfbirth).format('YYYY-MM-DD') : ''

        setStatusValidate(true)
        if (!firstName) return null
        if (!lastName) return null
        if (!telephoneNumber) return null
        if (!formatDateOfbirth) return null
        // if (!age) return null
        if (!identificationNumber) return null
        if (!diagnosis) return null
        // if (!nameOfHospitalReceivingTreatment) return null
        // if (!primaryDoctorName) return null
        // if (!hospitalOrDoctorTelephoneNumber) return null
        if (!neuromuscularDiseaseBloodTest) return null
        if (!doesThePatientHaveADisabilityIDCard) return null
        if (!consent) return null
        // if (!parentFirstName) return null
        // if (!parentLastName) return null
        // if (!parentRelevancy) return null
        // if (!parentTelephoneNumber) return null
        const formData = {
            firstName: firstName,
            lastName: lastName,
            createBy: `${cookieToken.firstName} ${cookieToken.lastName}`,
            telephone: telephoneNumber,
            birthday: formatDateOfbirth,
            age: age,
            citizenId: identificationNumber,
            diagnosisDMD: diagnosis === 'DMD' ? true : false,
            diagnosisSMATyp2: diagnosis === 'SMA Type 1' ? true : false,
            diagnosisSMATyp1: diagnosis === 'SMA Type 2' ? true : false,
            diagnosisSMATyp3: diagnosis === 'SMA Type 3' ? true : false,
            diagnosisCMT: diagnosis === 'CMT' ? true : false,
            diagnosisOther: diagnosis === 'อื่นๆ' ? other : null,
            hospitalName: nameOfHospitalReceivingTreatment,
            doctorName: primaryDoctorName,
            doctorHospitalTelephone: hospitalOrDoctorTelephoneNumber,
            underlyingDiseases: otherUnderlyingDiseases,
            neuromuscular: neuromuscularDiseaseBloodTest === 'เคย' ? true : false,
            neuromuscularDoc: neuromuscularDiseaseBloodTestResultsConfirmation,
            disability: doesThePatientHaveADisabilityIDCard === 'เคย' ? true : false,
            disabilityDoc: copyOfDisabilityIDCard,
            help: howCanHelp,
            email: email,
            consent: consent,
            consentVersion: consentVersion,
            parentFirstName: parentFirstName,
            parentLastName: parentLastName,
            parentRelevancy: parentRelevancy,
            parentTelephoneNumber: parentTelephoneNumber,
            itemDTOList: dataDeviceInformation && dataDeviceInformation.length > 0 ? dataDeviceInformation : null,
            researchDTOList: dataResearchProject && dataResearchProject.length > 0 ? dataResearchProject : null
        }

        setLoader(true)
        apiGatewayInstance.post('/api/register/submit', formData)
            .then(response => {
                if (response.data) {
                    setLoader(false)
                    setShowModal(true)
                }
            })
            .catch(error => {
                setLoader(false)
                if (error.response.data && error.response.data.message === 'Citizen Id already exist') {
                    alert('เลขบัตรประจำตัวประชาชนนี้ได้ลงทะเบียนไปแล้ว')
                }
                console.error(error)
            })
    }

    const handleConfirmModal = () => {
        router.push('/admin/register-list')
    }

    const onChangeInputDevice = (event) => {
        const item = {
            id: event.target.id,
            name: event.target.name,
            value: event.target.value
        }

        const newItem = dataDeviceInformation.map((itemList, index) => {
            for (const key in itemList) {
                if (key === item.name && parseInt(index, 10) === parseInt(item.id, 10)) {
                    itemList[key] = item.value
                }
            }

            return itemList
        })

        setDataDeviceInformation(newItem)

    }

    const onChangeInputDeviceDate = (id, name, value) => {
        const item = {
            id,
            name,
            value
        }

        const newItem = dataDeviceInformation.map((itemList, index) => {
            for (const key in itemList) {
                if (key === item.name && parseInt(index, 10) === parseInt(item.id, 10)) {
                    itemList[key] = item.value
                }
            }

            return itemList
        })

        setDataDeviceInformation(newItem)

    }


    const onChangeInputResearchProject = (event) => {
        const item = {
            id: event.target.id,
            name: event.target.name,
            value: event.target.value
        }

        const newItem = dataResearchProject.map((itemList, index) => {
            for (const key in itemList) {
                if (key === item.name && parseInt(index, 10) === parseInt(item.id, 10)) {
                    itemList[key] = item.value
                }
            }

            return itemList
        })

        setDataResearchProject(newItem)

    }

    const onChangeInputResearchProjectDate = (id, name, value) => {
        const item = {
            id,
            name,
            value
        }

        const newItem = dataResearchProject.map((itemList, index) => {
            for (const key in itemList) {
                if (key === item.name && parseInt(index, 10) === parseInt(item.id, 10)) {
                    itemList[key] = item.value
                }
            }

            return itemList
        })

        setDataResearchProject(newItem)

    }


    return (
        <BackgroundAdmin>
            <DesktopOnly>
                <HeaderContent />
            </DesktopOnly>
            <TabHeader>
                <div>{`ทะเบียนผู้ป่วย > `}<span className='current-page'>ลงทะเบียนผู้ป่วยใหม่</span></div>
            </TabHeader>
            <div className='p-24'>
                <ModalConfirmContent
                    isOpenModal={showModal} title={`ลงทะเบียนเรียบร้อยแล้ว`}
                    status={`register`}
                    confirmModal={() => handleConfirmModal()}
                    closeModal={() => handleConfirmModal()}
                />
                <WrapperFromAdmin>
                    <SectionBox>
                        <TitleBottomLine>
                            <TitleContent title={'ส่วนที่ 1 : ข้อมูลผู้ป่วย'} positionLine={'bottom'} />
                        </TitleBottomLine>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>ชื่อผู้ป่วย *</LabelTitle>
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
                                <LabelTitle>นามสกุลผู้ป่วย *</LabelTitle>
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
                                <LabelTitle>เบอร์โทรศัพท์ *</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='e.g. 0901234567' /> */}
                                <InputContent
                                    // label={'เบอร์โทรศัพท์ (Telephone Number) *'}
                                    type={'tel'}
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
                                <LabelTitle>วัน เดือน ปี เกิดของผู้ป่วย *</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='โปรดระบุ' type="date" /> */}
                                <InputContent
                                    // label={'วัน เดือน ปี เกิด (Date of birth) *'}
                                    placeholder={''}
                                    type={'date'}
                                    value={dateOfbirth}
                                    setValue={setDateOfbirth}
                                    require={checkValidate(dateOfbirth ? moment(dateOfbirth).format('YYYY-MM-DD') : '', statusValidate)}
                                    validName={'โปรดระบุ'}
                                />
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>เลขประจำตัวประชาชน 13 หลักของผู้ป่วย *</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='e.g. 1234567890000' /> */}
                                <InputContent
                                    // label={'เลขประจำตัวประชาชน 13 หลัก (Identification Number) *'}
                                    type={'number'}
                                    maxLength={'13'}
                                    placeholder={'e.g. 1234567890000'}
                                    value={identificationNumber}
                                    setValue={setIdentificationNumber}
                                    require={checkValidate(identificationNumber ? identificationNumber.toString() : '', statusValidate)}
                                    validName={'โปรดระบุ'}
                                />
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>การวินิฉัยโรค * </LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='โปรดเลือก' /> */}
                                {/* <InputFilterContent
                                    placeholder={'โปรดระบุ'}
                                    value={diagnosis}
                                    setValue={setDiagnosis}
                                    require={checkValidate(diagnosis, statusValidate)}
                                    validName={'โปรดระบุ'}
                                    listKey={`list-search-diagnosis`}
                                />
                                <datalist id='list-search-diagnosis'>
                                    <option value="DMD">ดูเชน (Duchenne Muscular Dystrophy : DMD)</option>
                                    <option value="SMA Type 1">เอสเอ็มเอ Type 1 (Spinal Muscular Atrophy: SMA)</option>
                                    <option value="SMA Type 2">เอสเอ็มเอ Type 2 (Spinal Muscular Atrophy: SMA)</option>
                                    <option value="SMA Type 3">เอสเอ็มเอ Type 3 (Spinal Muscular Atrophy: SMA)</option>
                                    <option value="CMT">ซีเอ็มที (Charcot-Marie-Tooth disease : CMT)</option>
                                    <option value="อื่นๆ">อื่นๆ</option>
                                </datalist> */}

                                <SelectBox value={diagnosis} require={checkValidate(diagnosis, statusValidate)} onChange={(e) => {
                                    setDiagnosis(e.target.value)
                                }} >
                                    <option value="">โปรดเลือก</option>
                                    <option value="DMD">ดูเชน (Duchenne Muscular Dystrophy : DMD)</option>
                                    <option value="SMA Type 1">เอสเอ็มเอ Type 1 (Spinal Muscular Atrophy: SMA)</option>
                                    <option value="SMA Type 2">เอสเอ็มเอ Type 2 (Spinal Muscular Atrophy: SMA)</option>
                                    <option value="SMA Type 3">เอสเอ็มเอ Type 3 (Spinal Muscular Atrophy: SMA)</option>
                                    <option value="CMT">ซีเอ็มที (Charcot-Marie-Tooth disease : CMT)</option>
                                    <option value="อื่นๆ">อื่นๆ</option>
                                </SelectBox>
                                {checkValidate(diagnosis, statusValidate) ? <ValidNameStyle>โปรดเลือก</ValidNameStyle> : null}
                                {
                                    diagnosis && diagnosis === 'อื่นๆ' ? (
                                        <div className='mt-16'>
                                            <InputContent
                                                placeholder={'อื่นๆ โปรดระบุ'}
                                                value={other}
                                                setValue={setOther}
                                            />
                                        </div>
                                    )
                                        : null
                                }
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>โรงพยาบาลที่รับการรักษาปัจจุบัน</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='โปรดระบุ' /> */}
                                <InputContent
                                    // label={'โรงพยาบาลที่รับการรักษาปัจจุบัน (Name of Hospital Receiving Treatment) *'}
                                    placeholder={'โปรดระบุ'}
                                    value={nameOfHospitalReceivingTreatment}
                                    setValue={setNameOfHospitalReceivingTreatment}
                                    require={false}
                                // validName={'โปรดระบุ'}
                                />
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>ชื่อแพทย์เจ้าของไข้</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='โปรดระบุ' /> */}
                                <InputContent
                                    // label={`ชื่อแพทย์เจ้าของไข้ (Primary Doctor's Name) *`}
                                    placeholder={'โปรดระบุ'}
                                    value={primaryDoctorName}
                                    setValue={setPrimaryDoctorName}
                                    require={false}
                                // validName={'โปรดระบุ'}
                                />
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>เบอร์โทรศัพท์สำหรับติดต่อแพทย์เจ้าของไข้</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='e.g. 0901234567' /> */}
                                <InputContent
                                    // label={`เบอร์โทรศัพท์สำหรับติดต่อโรงพยาบาลหรือแพทย์เจ้าของไข้ (Hospital or Doctor's Telephone Number) *`}
                                    type={'tel'}
                                    maxLength={'10'}
                                    placeholder={'e.g. 0901234567'}
                                    value={hospitalOrDoctorTelephoneNumber}
                                    setValue={setHospitalOrDoctorTelephoneNumber}
                                    require={false}
                                // validName={'โปรดระบุ'}
                                />
                            </div>
                        </InputRowBox>
                    </SectionBox>
                    <SectionBox>
                        <h3>ข้อมูลของผู้ปกครองหรือผู้ดูแล (Parent’s Information) (โปรดระบุข้อมูล ในกรณีที่ลงทะเบียนให้เด็ก)</h3>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>ชื่อ ของผู้ปกครอง (First Name)</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='โปรดระบุ' /> */}
                                <InputContent
                                    // label={`ชื่อ ของผู้ปกครอง (First Name) *`}
                                    placeholder={'โปรดระบุ'}
                                    value={parentFirstName}
                                    setValue={setParentFirstName}
                                    require={false}
                                    validName={'โปรดระบุ'}
                                />
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>นามสกุล ของผู้ปกครอง (Last Name)</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='โปรดระบุ' /> */}
                                <InputContent
                                    // label={`นามสกุล ของผู้ปกครอง (Last Name) *`}
                                    placeholder={'โปรดระบุ'}
                                    value={parentLastName}
                                    setValue={setParentLastName}
                                    require={false}
                                    validName={'โปรดระบุ'}
                                />
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>ความเกี่ยวข้องเป็น (Relevancy)</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='โปรดระบุ' /> */}
                                <InputContent
                                    // label={`ความเกี่ยวข้องเป็น (Relevancy) *`}
                                    placeholder={'โปรดระบุ'}
                                    value={parentRelevancy}
                                    setValue={setParentRelevancy}
                                    require={false}
                                    validName={'โปรดระบุ'}
                                />
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>เบอร์โทรศัพท์ (Telephone Number)</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='e.g. 0901234567' /> */}
                                <InputContent
                                    // label={`เบอร์โทรศัพท์ (Telephone Number) *`}
                                    type={'tel'}
                                    maxLength={'10'}
                                    placeholder={'e.g. 0901234567'}
                                    value={parentTelephoneNumber}
                                    setValue={setParentTelephoneNumber}
                                    require={false}
                                    validName={'โปรดระบุ'}
                                />
                            </div>
                        </InputRowBox>
                    </SectionBox>
                    <SectionBox>
                        <TitleBottomLine>
                            <TitleContent title={'ส่วนที่ 2 : ข้อมูลเพิ่มเติม Additional Information'} positionLine={'bottom'} />
                        </TitleBottomLine>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>โรคประจำตัวอื่นๆ</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='โปรดระบุ' /> */}
                                <InputContent
                                    // label={`โรคประจำตัวอื่นๆ (Other Underlying Diseases)`}
                                    placeholder={'โปรดระบุ'}
                                    value={otherUnderlyingDiseases}
                                    setValue={setOtherUnderlyingDiseases}
                                    require={false}
                                    validName={'โปรดระบุ'}
                                />
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>ผู้ป่วยเคยตรวจเลือดเพื่อยืนยันการเป็นโรคกล้ามเนื้ออ่อนแรงหรือไม่ *</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputFilterContent
                                    placeholder={'โปรดเลือก'}
                                    value={neuromuscularDiseaseBloodTest}
                                    setValue={setNeuromuscularDiseaseBloodTest}
                                    require={checkValidate(neuromuscularDiseaseBloodTest, statusValidate)}
                                    validName={'โปรดเลือก'}
                                    listKey={`list-search-neuromuscularDiseaseBloodTest`}
                                />
                                <datalist id='list-search-neuromuscularDiseaseBloodTest'>
                                    <option value="เคย">เคย</option>
                                    <option value="ไม่เคย">ไม่เคย</option>
                                </datalist> */}

                                <SelectBox value={neuromuscularDiseaseBloodTest} require={checkValidate(neuromuscularDiseaseBloodTest, statusValidate)} onChange={(e) => {
                                    setNeuromuscularDiseaseBloodTest(e.target.value)
                                }} >
                                    <option value="">โปรดเลือก</option>
                                    <option value="เคย">เคย</option>
                                    <option value="ไม่เคย">ไม่เคย</option>
                                </SelectBox>
                                {checkValidate(neuromuscularDiseaseBloodTest, statusValidate) ? <ValidNameStyle>โปรดเลือก</ValidNameStyle> : null}
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>เอกสารผลตรวจเลือดยืนยันการเป็นโรคกล้ามเนื้ออ่อนแรง</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                <FlexStyleUploadFile>
                                    <ButtonUploadFile onClick={() => selectFileBloodDocument({}, ({ file }) => {
                                        handleUploadFileBloodDocument(file)
                                    })}>
                                        <div className='button-image'>
                                            <Image src={iconUpload} />
                                        </div>
                                        <span>เพิ่มไฟล์</span>
                                    </ButtonUploadFile>
                                    {
                                        fileBloodDocument ? (
                                            <span>{fileBloodDocument.name}</span>
                                        )
                                            : null
                                    }
                                </FlexStyleUploadFile>
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>ผู้ป่วยมีบัตรประจำตัวคนพิการหรือไม่ *</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputFilterContent
                                    placeholder={'โปรดเลือก'}
                                    value={doesThePatientHaveADisabilityIDCard}
                                    setValue={setDoesThePatientHaveADisabilityIDCard}
                                    require={checkValidate(doesThePatientHaveADisabilityIDCard, statusValidate)}
                                    validName={'โปรดเลือก'}
                                    listKey={`list-search-doesThePatientHaveADisabilityIDCard`}
                                />
                                <datalist id='list-search-doesThePatientHaveADisabilityIDCard'>
                                    <option value="เคย">เคย</option>
                                    <option value="ไม่เคย">ไม่เคย</option>
                                </datalist> */}
                                <SelectBox value={doesThePatientHaveADisabilityIDCard} require={checkValidate(doesThePatientHaveADisabilityIDCard, statusValidate)} onChange={(e) => {
                                    setDoesThePatientHaveADisabilityIDCard(e.target.value)
                                }} >
                                    <option value="">โปรดเลือก</option>
                                    <option value="เคย">เคย</option>
                                    <option value="ไม่เคย">ไม่เคย</option>
                                </SelectBox>
                                {checkValidate(doesThePatientHaveADisabilityIDCard, statusValidate) ? <ValidNameStyle>โปรดเลือก</ValidNameStyle> : null}
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>สำเนาบัตรประจำตัวคนพิการ</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                <FlexStyleUploadFile>
                                    <ButtonUploadFile onClick={() => selectFileCardCopy({}, ({ file }) => {
                                        handleUploadFileIDCard(file)
                                    })}>
                                        <div className='button-image'>
                                            <Image src={iconUpload} />
                                        </div>
                                        <span>เพิ่มไฟล์</span>
                                    </ButtonUploadFile>
                                    {
                                        fileCardCopy ? (
                                            <span>{fileCardCopy.name}</span>
                                        )
                                            : null
                                    }
                                </FlexStyleUploadFile>
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>ต้องการให้เราช่วยเหลือเรื่องใด</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='โปรดระบุ' /> */}
                                <InputContent
                                    // label={`ต้องการให้เราช่วยเหลือเรื่องใด (How can F)E)N)D) help?)`}
                                    placeholder={'โปรดระบุ'}
                                    value={howCanHelp}
                                    setValue={setHowCanHelp}
                                    require={false}
                                    validName={'โปรดระบุ'}
                                />
                            </div>
                        </InputRowBox>
                        <InputRowBox>
                            <div className='col-4 col-sm-12'>
                                <LabelTitle>อีเมล</LabelTitle>
                            </div>
                            <div className='col-8 col-sm-12'>
                                {/* <InputBox placeholder='โปรดระบุ' /> */}
                                <InputContent
                                    // label={`อีเมล (Email)`}
                                    type={'email'}
                                    placeholder={'โปรดระบุ'}
                                    value={email}
                                    setValue={setEmail}
                                    require={false}
                                    validName={'โปรดระบุ'}
                                    validNameType={'รูปแบบอีเมลไม่ถูกต้อง'}
                                />
                            </div>
                        </InputRowBox>
                    </SectionBox>
                    <SectionBox>
                        <TitleBottomLine>
                            <TitleContent title={'ส่วนที่ 3 : ข้อมูลการรับอุปกรณ์'} positionLine={'bottom'} />
                            <ButtonTheme onClick={() => onClickAddDevice()}>
                                <div className='image-style'>
                                    <Image src={iconAdd} />
                                </div>
                                <DesktopOnly>
                                    <span>เพิ่มอุปกรณ์</span>
                                </DesktopOnly>
                            </ButtonTheme>
                        </TitleBottomLine>
                        {
                            dataDeviceInformation && dataDeviceInformation.length > 0 ? dataDeviceInformation.map((item, index) => (
                                <AddFromBox key={index}>
                                    <div className='title-box'>
                                        <label>รายละเอียดการรับอุปกรณ์</label>
                                        <BackgroundDelete onClick={() => onClickRemoveDevice(index)}>
                                            <Image src={iconDelete} />
                                        </BackgroundDelete>
                                    </div>
                                    <div className='row'>
                                        <div className='col-12 col-sm-12 mb-22'>
                                            <label>ชื่ออุปกรณ์</label>
                                            <InputBox
                                                placeholder='ระบุชื่ออุปกรณ์'
                                                // value={deviceName}
                                                name='researchName'
                                                id={index}
                                                onChange={onChangeInputDevice}
                                            />
                                            {/* <InputContent
                                                placeholder={'ระบุชื่ออุปกรณ์'}
                                                value={deviceName}
                                                setValue={setDeviceName}
                                                require={false}
                                                validName={'โปรดระบุ'}
                                            /> */}
                                        </div>
                                    </div>
                                    <div className='row'>
                                        <div className='col-6 col-sm-12 mb-22'>
                                            <label>ไฟล์สัญญาการยืมอุปกรณ์</label>
                                            <InputFilterBox onClick={() => selectFileContract({}, ({ file }) => {
                                                handleUploadFileContract(file, index, 'contractFile')
                                            })}>
                                                <InputBox placeholder='เพิ่มไฟล์' onChange={() => selectFileContract({}, ({ file }) => { handleUploadFileContract(file, index, 'contractFile') })} value={fileContract ? fileContract.name : ''} />
                                                <div className='input-icon'>
                                                    <Image src={iconUploadBack} />
                                                </div>
                                            </InputFilterBox>
                                        </div>
                                        <div className='col-6 col-sm-12 mb-22'>
                                            <label>ไฟล์เอกสารขอความยินยอม</label>
                                            <InputFilterBox onClick={() => selectFileConsent({}, ({ file }) => {
                                                handleUploadFileContract(file, index, 'consentFile')
                                            })}>
                                                <InputBox placeholder='เพิ่มไฟล์' onChange={() => selectFileConsent({}, ({ file }) => { handleUploadFileContract(file, index, 'consentFile') })} value={fileConsent ? fileConsent.name : ''} />
                                                <div className='input-icon'>
                                                    <Image src={iconUploadBack} />
                                                </div>
                                            </InputFilterBox>
                                        </div>
                                    </div>
                                    <div className='row'>
                                        <div className='col-12 col-sm-12 mb-22'>
                                            <label>หมายเหตุ</label>
                                            <InputBox
                                                placeholder='ระบุหมายเหตุ'
                                                name='remark'
                                                id={index}
                                                onChange={onChangeInputDevice}
                                            />
                                            {/* <InputContent
                                                placeholder={'หมายเหตุ'}
                                                value={deviceNote}
                                                setValue={setDeviceNote}
                                                require={false}
                                                validName={'โปรดระบุ'}
                                            /> */}
                                        </div>
                                    </div>
                                    <div className='row'>
                                        <div className='col-6 col-sm-12 mb-22'>
                                            <label>วันที่เริ่มโครงการ</label>
                                            <DatePicker
                                                dateFormat="dd/MM/yyyy"
                                                showYearDropdown
                                                dateFormatCalendar="MMMM"
                                                yearDropdownItemNumber={100}
                                                scrollableYearDropdown
                                                selected={item.receiveDate}
                                                onChange={(date) => onChangeInputDeviceDate(index, 'receiveDate', date)}
                                                placeholderText={'วัน/เดือน/ปี'}
                                                customInput={
                                                    <InputBox
                                                        // type='date'
                                                        name='receiveDate'
                                                        id={index}
                                                    // onChange={onChangeInputDevice}
                                                    />
                                                } />
                                        </div>
                                        <div className='col-6 col-sm-12'>
                                            <label>วันที่สิ้นสุดโครงการ</label>
                                            <DatePicker
                                                dateFormat="dd/MM/yyyy"
                                                showYearDropdown
                                                dateFormatCalendar="MMMM"
                                                yearDropdownItemNumber={100}
                                                scrollableYearDropdown
                                                selected={item.getBackDate}
                                                onChange={(date) => onChangeInputDeviceDate(index, 'getBackDate', date)}
                                                placeholderText={'วัน/เดือน/ปี'}
                                                customInput={
                                                    <InputBox
                                                        // type='date'
                                                        name='getBackDate'
                                                        id={index}
                                                    // onChange={onChangeInputDevice}
                                                    />
                                                }
                                            />
                                        </div>
                                    </div>
                                </AddFromBox>
                            ))
                                : (
                                    <AddFromBox>
                                        <div className='p-24' style={{ textAlign: 'center' }}>
                                            <LabelTitle>ไม่พบข้อมูลการรับอุปกรณ์</LabelTitle>
                                        </div>
                                    </AddFromBox>
                                )
                        }
                    </SectionBox>
                    <SectionBox>
                        <TitleBottomLine>
                            <TitleContent title={'ส่วนที่ 4 : ข้อมูลการร่วมโครงการวิจัย'} positionLine={'bottom'} />
                            <ButtonTheme onClick={() => onClickAddResearchProject()}>
                                <div className='image-style'>
                                    <Image src={iconAdd} />
                                </div>
                                <DesktopOnly>
                                    <span>เพิ่มโครงการวิจัย</span>
                                </DesktopOnly>
                            </ButtonTheme>
                        </TitleBottomLine>
                        {
                            dataResearchProject && dataResearchProject.length > 0 ? dataResearchProject.map((item, index) => (
                                <AddFromBox key={index}>
                                    <div className='title-box'>
                                        <label>รายละเอียดโครงการวิจัย</label>
                                        <BackgroundDelete onClick={() => onClickRemoveResearchProject(index)}>
                                            <Image src={iconDelete} />
                                        </BackgroundDelete>
                                    </div>
                                    <div className='row'>
                                        <div className='col-8 col-sm-12 mb-22'>
                                            <label>ชื่อโครงการวิจัย</label>
                                            <InputBox
                                                placeholder='ระบุชื่อโครงการวิจัย'
                                                name='researchName'
                                                id={index}
                                                onChange={onChangeInputResearchProject}
                                            />
                                        </div>
                                        <div className='col-4 col-sm-12 mb-22'>
                                            <label>วันที่เข้าร่วมโครงการ</label>
                                            <DatePicker
                                                dateFormat="dd/MM/yyyy"
                                                showYearDropdown
                                                dateFormatCalendar="MMMM"
                                                yearDropdownItemNumber={100}
                                                scrollableYearDropdown
                                                selected={item.joinDate}
                                                onChange={(date) => onChangeInputResearchProjectDate(index, 'joinDate', date)}
                                                placeholderText={'วัน/เดือน/ปี'}
                                                customInput={
                                                    <InputBox
                                                        // type='date'
                                                        name='joinDate'
                                                        id={index}
                                                    // onChange={onChangeInputResearchProject} 
                                                    />
                                                }
                                            />
                                        </div>
                                        <div className='col-4 col-sm-12 mb-22'>
                                            <label>หน่วยงานเจ้าของโครงการ</label>
                                            <InputBox
                                                placeholder='ระบุหน่วยงานเจ้าของโครงการ'
                                                name='researchOwner'
                                                id={index}
                                                onChange={onChangeInputResearchProject}
                                            />
                                        </div>
                                        <div className='col-4 col-sm-12 mb-22'>
                                            <label>ชื่อผู้ประสานงานโครงการ</label>
                                            <InputBox
                                                placeholder='ระบุชื่อผู้ประสานงานโครงการ'
                                                name='researchContact'
                                                id={index}
                                                onChange={onChangeInputResearchProject}
                                            />
                                        </div>
                                        <div className='col-4 col-sm-12 mb-22'>
                                            <label>เบอร์โทรศัพท์</label>
                                            <InputBox
                                                type={'number'}
                                                maxLength={'10'}
                                                placeholder='ระบุเบอร์โทรศัพท์'
                                                name='researchTelephone'
                                                id={index}
                                                onChange={onChangeInputResearchProject}
                                            />
                                        </div>
                                        <div className='col-8 col-sm-12 mb-22'>
                                            <label>หมายเหตุ</label>
                                            <InputBox
                                                placeholder='ระบุหมายเหตุ'
                                                name='researchRemark'
                                                id={index}
                                                onChange={onChangeInputResearchProject}
                                            />
                                        </div>
                                    </div>
                                    <div className='row'>
                                        <div className='col-4 col-sm-12 mb-22'>
                                            <label>วันที่เริ่มโครงการ</label>
                                            <DatePicker
                                                dateFormat="dd/MM/yyyy"
                                                showYearDropdown
                                                dateFormatCalendar="MMMM"
                                                yearDropdownItemNumber={100}
                                                scrollableYearDropdown
                                                selected={item.receiveDate}
                                                onChange={(date) => onChangeInputResearchProjectDate(index, 'receiveDate', date)}
                                                placeholderText={'วัน/เดือน/ปี'}
                                                customInput={
                                                    <InputBox
                                                        // type='date'
                                                        name='receiveDate'
                                                        id={index}
                                                    // onChange={onChangeInputResearchProject}
                                                    />
                                                }
                                            />
                                        </div>
                                        <div className='col-4 col-sm-12'>
                                            <label>วันที่สิ้นสุดโครงการ</label>
                                            <DatePicker
                                                dateFormat="dd/MM/yyyy"
                                                showYearDropdown
                                                dateFormatCalendar="MMMM"
                                                yearDropdownItemNumber={100}
                                                scrollableYearDropdown
                                                selected={item.getBackDate}
                                                onChange={(date) => onChangeInputResearchProjectDate(index, 'getBackDate', date)}
                                                placeholderText={'วัน/เดือน/ปี'}
                                                customInput={
                                                    <InputBox
                                                        // type='date'
                                                        name='getBackDate'
                                                        id={index}
                                                    // onChange={onChangeInputResearchProject}
                                                    />
                                                }
                                            />
                                        </div>
                                    </div>
                                </AddFromBox>
                            ))
                                : (
                                    <AddFromBox>
                                        <div className='p-24' style={{ textAlign: 'center' }}>
                                            <LabelTitle>ไม่พบข้อมูลการรับอุปกรณ์</LabelTitle>
                                        </div>
                                    </AddFromBox>
                                )
                        }
                    </SectionBox>
                    <SectionBox>
                        <TitleBottomLine>
                            <TitleContent title={'ส่วนที่ 5 : ความยินยอม (Consent)'} positionLine={'bottom'} />
                        </TitleBottomLine>
                        <div className='mt-22'>
                            <LabelTitle>ข้อมูลทั้งหมดของท่านที่ทางมูลนิธิโรคกล้ามเนื้ออ่อนแรงได้รับ จะใช้เพื่อการยืนยันตัวตนผู้ป่วย และอาจมีการส่งต่อให้บุคคลที่ 3 เช่น การปรึกษาแพทย์เฉพาะทาง หรือหน่วยงานอื่น เพื่อประโยชน์ในการให้ความช่วยเหลือ การรักษา และโครงการวิจัยที่มีประโยชน์เท่านั้น รวมถึงจะดำเนินการจัดเก็บข้อมูลส่วนบุคคลของท่านเป็นความลับอย่างปลอดภัย (All your information received by Foundation to Eradicate Neuromuscular Disease will be used to verify the identity of the patient and may be referred to third parties, such as consulting a specialized doctor or other organization for the benefit of providing assistance, treatment and useful research projects only. We will keep your personal information confidential and secure) *</LabelTitle>
                            {
                                consentVersion && consentVersion ? (
                                    <div style={{ display: 'flex', justifyContent: 'flex-end' }}>
                                        <div className='help-text mr-8'>เวอร์ชั่น : {consentVersion}</div>
                                    </div>
                                )
                                    : null
                            }
                            <FilePDFStyle>
                                <Worker workerUrl="https://unpkg.com/pdfjs-dist@2.14.305/build/pdf.worker.min.js">
                                    <Viewer fileUrl="../../static/pdf/FEND_PDPA.pdf" defaultScale={SpecialZoomLevel.PageFit}/>
                                </Worker>
                            </FilePDFStyle>
                            <RadioBox>
                                <input type="radio" name="consent" value={true} onChange={e => setConsent(e.target.value)} />
                                <span>ฉันยินยอมให้เว็บไซต์นี้จัดเก็บข้อมูลที่ฉันให้ และยินยอมให้ส่งต่อให้บุคคลที่ 3 เพื่อประโยชน์ในการให้ความช่วยเหลือ การรักษา และโครงการวิจัยที่มีประโยชน์ เท่านั้น (I consent and allow this website to store my submitted information and refer to a third party for the benefit of assistance, treatment and useful research projects only)</span>
                            </RadioBox>
                            {checkValidate(consent, statusValidate) ? <ValidNameStyle>{`โปรดเลือก`}</ValidNameStyle> : null}
                        </div>
                        <div className='mt-22'>
                            {
                                !loader ? (
                                    <ButtonTheme style={{ margin: 'auto' }} backgroundColor={'#7bb453'} onClick={() => handleSubmitRegister()}>
                                        <span>บันทึก</span>
                                    </ButtonTheme>
                                )
                                    : (
                                        <ButtonTheme style={{ margin: 'auto' }} backgroundColor={'#7bb453'}>
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
        </BackgroundAdmin >
    )
}

export default RegisterListAddScreen
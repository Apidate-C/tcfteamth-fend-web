import React, { useState } from 'react'
import {
    InputBox,
    RadioBox,
    WrapperMyShelf,
    TitlePages,
    LabelTitle,
    FlexStyleUploadFile,
    ButtonUploadFile,
    ButtonTheme,
    ValidNameStyle,
    FilePDFStyle
} from '../../components/styles/global'
import { TitleContent, InputContent, HeaderBannerContent, FooterBannerContent, FooterContent, ModalConfirmContent } from '../../components/elements'
import Image from 'next/image'
import moment from 'moment'
import { useFileUpload } from 'use-file-upload'
import { checkValidate } from '../../helpers/checkValidate'
import { handleUploadFile } from '../../helpers/handleUploadFile'
import { apiGatewayInstance } from '../../helpers/utils'
import { pdpaVersion } from "../../config"
import { Viewer, Worker,  SpecialZoomLevel } from '@react-pdf-viewer/core';

import upload from '../../static/images/icon-upload.png'
import titeImage from '../../static/images/title-bg.svg'


const RegisterMySelfScreen = () => {
    const [fileBloodDocument, selectFileBloodDocument] = useFileUpload()
    const [fileCardCopy, selectFileCardCopy] = useFileUpload()
    const [statusValidate, setStatusValidate] = useState(false)
    const [firstName, setFirstName] = useState('')
    const [lastName, setLastName] = useState('')
    const [telephoneNumber, setTelephoneNumber] = useState('-')
    const [dateOfbirth, setDateOfbirth] = useState('')
    const [age, setAge] = useState(0)
    const [identificationNumber, setIdentificationNumber] = useState('')
    const [diagnosis, setDiagnosis] = useState('')
    const [nameOfHospitalReceivingTreatment, setNameOfHospitalReceivingTreatment] = useState('')
    const [primaryDoctorName, setPrimaryDoctorName] = useState('')
    const [hospitalOrDoctorTelephoneNumber, setHospitalOrDoctorTelephoneNumber] = useState('')
    const [otherUnderlyingDiseases, setOtherUnderlyingDiseases] = useState('')
    const [neuromuscularDiseaseBloodTest, setNeuromuscularDiseaseBloodTest] = useState(false)
    const [neuromuscularDiseaseBloodTestResultsConfirmation, setNeuromuscularDiseaseBloodTestResultsConfirmation] = useState('')
    const [doesThePatientHaveADisabilityIDCard, setDoesThePatientHaveADisabilityIDCard] = useState(false)
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
    const [consentVersion, setConsentVersion] = useState(pdpaVersion)

    const handleUploadFileBloodDocument = async (file) => {
        const fileUrl = await handleUploadFile(file)
        setNeuromuscularDiseaseBloodTestResultsConfirmation(fileUrl)
    }

    const handleUploadFileIDCard = async (file) => {
        const fileUrl = await handleUploadFile(file)
        setCopyOfDisabilityIDCard(fileUrl)
    }

    const handleSubmitRegister = () => {
        const formatDateOfbirth = dateOfbirth ? moment(dateOfbirth).format('YYYY-MM-DD') : ''

        setStatusValidate(true)
        if (!firstName) return null
        if (!lastName) return null
        if (!formatDateOfbirth) return null
        if (!identificationNumber) return null
        if (!diagnosis) return null
        if (!nameOfHospitalReceivingTreatment) return null
        if (!primaryDoctorName) return null
        if (!neuromuscularDiseaseBloodTest) return null
        if (!doesThePatientHaveADisabilityIDCard) return null
        if (!consent) return null
        if (!parentFirstName) return null
        if (!parentLastName) return null
        if (!parentRelevancy) return null
        if (!parentTelephoneNumber) return null
        const formData = {
            firstName: firstName,
            lastName: lastName,
            createBy: `${parentFirstName} ${parentLastName}`,
            telephone: parentTelephoneNumber || telephoneNumber,
            birthday: formatDateOfbirth,
            age: age,
            citizenId: identificationNumber,
            diagnosisDMD: diagnosis === 'DMD' ? true : false,
            diagnosisSMATyp2: diagnosis === 'SMA1' ? true : false,
            diagnosisSMATyp1: diagnosis === 'SMA2' ? true : false,
            diagnosisSMATyp3: diagnosis === 'SMA3' ? true : false,
            diagnosisCMT: diagnosis === 'CMT' ? true : false,
            diagnosisOther: diagnosis === 'ETC' ? other : null,
            hospitalName: nameOfHospitalReceivingTreatment,
            doctorName: primaryDoctorName,
            doctorHospitalTelephone: hospitalOrDoctorTelephoneNumber,
            underlyingDiseases: otherUnderlyingDiseases,
            neuromuscular: neuromuscularDiseaseBloodTest,
            neuromuscularDoc: neuromuscularDiseaseBloodTestResultsConfirmation,
            disability: doesThePatientHaveADisabilityIDCard,
            disabilityDoc: copyOfDisabilityIDCard,
            help: howCanHelp,
            email: email,
            consent: consent,
            consentVersion: consentVersion,
            parentFirstName: parentFirstName,
            parentLastName: parentLastName,
            parentRelevancy: parentRelevancy,
            parentTelephoneNumber: parentTelephoneNumber,
        }

        apiGatewayInstance.post('/api/register/submit', formData)
            .then(response => {
                if (response.data && response.status === 200) {
                    setShowModal(true)
                }
            })
            .catch(error => {
                if (error.response.data && error.response.data.message === 'Citizen Id already exist') {
                    alert('เลขบัตรประจำตัวประชาชนนี้ได้ลงทะเบียนไปแล้ว')
                }
                console.error(error)
            })
    }

    const handleConfirmModal = () => {
        window.location.href = 'https://fendfoundation.com/'
    }

    return (
        <>
            <ModalConfirmContent
                isOpenModal={showModal} title={`ลงทะเบียนเรียบร้อยแล้ว`}
                status={`register`}
                confirmModal={() => handleConfirmModal()}
                closeModal={() => handleConfirmModal()}
            />
            <HeaderBannerContent />
            <TitlePages>
                <h1>ลงทะเบียนให้เด็ก</h1>
                <div className='image-style'>
                    <Image src={titeImage} />
                </div>
            </TitlePages>
            <WrapperMyShelf>
                <TitleContent title={'ส่วนที่ 1 : ข้อมูลผู้ป่วย'} />
                <div className='border-bottom'>
                    <div className='row'>
                        <div className='col-6 col-sm-12 mt-22'>
                            {/* <LabelTitle>ชื่อ (First Name) *</LabelTitle>
                        <InputBox placeholder='โปรดระบุ' /> */}
                            <InputContent
                                label={'ชื่อผู้ป่วย (First Name) *'}
                                placeholder={'โปรดระบุ'}
                                value={firstName}
                                setValue={setFirstName}
                                require={checkValidate(firstName, statusValidate)}
                                validName={'โปรดระบุ'}
                            />
                        </div>
                        <div className='col-6 col-sm-12 mt-22'>
                            {/* <LabelTitle>นามสกุล (Last Name) *</LabelTitle>
                        <InputBox placeholder='โปรดระบุ' /> */}
                            <InputContent
                                label={'นามสกุลผู้ป่วย (Last Name) *'}
                                placeholder={'โปรดระบุ'}
                                value={lastName}
                                setValue={setLastName}
                                require={checkValidate(lastName, statusValidate)}
                                validName={'โปรดระบุ'}
                            />
                        </div>

                        <div className='col-4 col-sm-12 mt-22'>
                            <InputContent
                                label={'วัน เดือน ปี เกิดของผู้ป่วย (Date of Birth) *'}
                                placeholder={''}
                                type={'date'}
                                value={dateOfbirth}
                                setValue={setDateOfbirth}
                                require={checkValidate(dateOfbirth ? moment(dateOfbirth).format('YYYY-MM-DD') : '', statusValidate)}
                                validName={'โปรดระบุ'}
                            />
                        </div>
       
                        <div className='col-8 col-sm-12 mt-22'>
                            <InputContent
                                type={'number'}
                                maxLength={'13'}
                                label={'เลขประจำตัวประชาชน 13 หลักของผู้ป่วย (Identification Number) *'}
                                placeholder={'e.g. 1234567890000'}
                                value={identificationNumber}
                                setValue={setIdentificationNumber}
                                require={checkValidate(identificationNumber ? identificationNumber.toString() : '', statusValidate)}
                                validName={'โปรดระบุ'}
                            />
                        </div>
                    </div>
                    <div className='mt-22'>
                        <LabelTitle>การวินิฉัยโรค (Diagnosis) *</LabelTitle>
                        <div className='row'>
                            <div className='col-6 col-sm-12'>
                                <RadioBox>
                                    <input type="radio" name="diagnosis" value={`DMD`} onChange={e => setDiagnosis(e.target.value)} />
                                    <span>ดูเชน (Duchenne Muscular Dystrophy : DMD)</span>
                                </RadioBox>
                            </div>
                            <div className='col-6 col-sm-12'>
                                <RadioBox>
                                    <input type="radio" name="diagnosis" value={`SMA1`} onChange={e => setDiagnosis(e.target.value)} />
                                    <span>เอสเอ็มเอ Type 1 (Spinal Muscular Atrophy: SMA)</span>
                                </RadioBox>
                            </div>
                            <div className='col-6 col-sm-12'>
                                <RadioBox>
                                    <input type="radio" name="diagnosis" value={`SMA2`} onChange={e => setDiagnosis(e.target.value)} />
                                    <span>เอสเอ็มเอ Type 2 (Spinal Muscular Atrophy: SMA)</span>
                                </RadioBox>
                            </div>
                            <div className='col-6 col-sm-12'>
                                <RadioBox>
                                    <input type="radio" name="diagnosis" value={`SMA3`} onChange={e => setDiagnosis(e.target.value)} />
                                    <span>เอสเอ็มเอ Type 3 (Spinal Muscular Atrophy: SMA)</span>
                                </RadioBox>
                            </div>
                            <div className='col-6 col-sm-12'>
                                <RadioBox>
                                    <input type="radio" name="diagnosis" value={`CMT`} onChange={e => setDiagnosis(e.target.value)} />
                                    <span>ซีเอ็มที (Charcot-Marie-Tooth disease : CMT)</span>
                                </RadioBox>
                            </div>
                            <div className='col-6 col-sm-12'>
                                <RadioBox>
                                    <div className='label'>
                                        <input type="radio" name="diagnosis" value={`ETC`} onChange={e => setDiagnosis(e.target.value)} />
                                        <span>อื่นๆ:</span>
                                    </div>
                                    <InputBox placeholder='โปรดระบุ' value={other} onChange={e => setOther(e.target.value)} />
                                </RadioBox>
                            </div>
                        </div>
                        {checkValidate(diagnosis, statusValidate) ? <ValidNameStyle>{`โปรดเลือก`}</ValidNameStyle> : null}
                    </div>
                    <div className='row'>
                        <div className='col-12 mt-22'>
                            {/* <LabelTitle>โรงพยาบาลที่รับการรักษาปัจจุบัน (Name of Hospital Receiving Treatment) *</LabelTitle>
                        <InputBox placeholder='โปรดระบุ' /> */}
                            <InputContent
                                label={'โรงพยาบาลที่รับการรักษาปัจจุบัน (Name of Hospital Receiving Treatment) *'}
                                placeholder={'โปรดระบุ'}
                                value={nameOfHospitalReceivingTreatment}
                                setValue={setNameOfHospitalReceivingTreatment}
                                require={checkValidate(nameOfHospitalReceivingTreatment, statusValidate)}
                                validName={'โปรดระบุ'}
                            />
                        </div>
                    </div>
                    <div className='row'>
                        <div className='col-12 mt-22'>
                            {/* <LabelTitle>ชื่อแพทย์เจ้าของไข้ (Primary Doctor's Name) *</LabelTitle>
                        <InputBox placeholder='โปรดระบุ' /> */}
                            <InputContent
                                label={`ชื่อแพทย์เจ้าของไข้ (Primary Doctor's Name) *`}
                                placeholder={'โปรดระบุ'}
                                value={primaryDoctorName}
                                setValue={setPrimaryDoctorName}
                                require={checkValidate(primaryDoctorName, statusValidate)}
                                validName={'โปรดระบุ'}
                            />
                        </div>
                    </div>
                    <div className='row'>
                        <div className='col-12 mt-22 mb-22'>
                            {/* <LabelTitle>เบอร์โทรศัพท์สำหรับติดต่อโรงพยาบาลหรือแพทย์เจ้าของไข้ (Hospital or Doctor's Telephone Number) *</LabelTitle>
                        <InputBox placeholder='e.g. 0901234567' /> */}
                            <InputContent
                                type={'tel'}
                                maxLength={'10'}
                                label={`เบอร์โทรศัพท์สำหรับติดต่อโรงพยาบาลหรือแพทย์เจ้าของไข้ (Hospital or Doctor's Telephone Number)`}
                                placeholder={'e.g. 0901234567'}
                                value={hospitalOrDoctorTelephoneNumber}
                                setValue={setHospitalOrDoctorTelephoneNumber}
                            // require={checkValidate(hospitalOrDoctorTelephoneNumber ? hospitalOrDoctorTelephoneNumber.toString() : '', statusValidate)}
                            // validName={'โปรดระบุ'}
                            />
                        </div>
                    </div>
                </div>
                <h3>ข้อมูลของผู้ปกครองหรือผู้ดูแล (Parent’s Information)</h3>
                <div className='row'>
                    <div className='col-6 col-sm-12 mt-22'>
                        {/* <LabelTitle>ชื่อ ของผู้ปกครอง (First Name) *</LabelTitle>
                        <InputBox placeholder='โปรดระบุ' /> */}
                        <InputContent
                            label={`ชื่อ ของผู้ปกครอง (First Name) *`}
                            placeholder={'โปรดระบุ'}
                            value={parentFirstName}
                            setValue={setParentFirstName}
                            require={checkValidate(parentFirstName, statusValidate)}
                            validName={'โปรดระบุ'}
                        />
                    </div>
                    <div className='col-6 col-sm-12 mt-22'>
                        {/* <LabelTitle>นามสกุล ของผู้ปกครอง (Last Name) *</LabelTitle>
                        <InputBox placeholder='โปรดระบุ' /> */}
                        <InputContent
                            label={`นามสกุล ของผู้ปกครอง (Last Name) *`}
                            placeholder={'โปรดระบุ'}
                            value={parentLastName}
                            setValue={setParentLastName}
                            require={checkValidate(parentLastName, statusValidate)}
                            validName={'โปรดระบุ'}
                        />
                    </div>
                    <div className='col-6 col-sm-12 mt-22'>
                        {/* <LabelTitle>ความเกี่ยวข้องเป็น (Relevancy) *</LabelTitle>
                        <InputBox placeholder='โปรดระบุ' /> */}
                        <InputContent
                            label={`ความเกี่ยวข้องเป็น (Relevancy) *`}
                            placeholder={'โปรดระบุ'}
                            value={parentRelevancy}
                            setValue={setParentRelevancy}
                            require={checkValidate(parentRelevancy, statusValidate)}
                            validName={'โปรดระบุ'}
                        />
                    </div>
                    <div className='col-6 col-sm-12 mt-22'>
                        {/* <LabelTitle>เบอร์โทรศัพท์ (Telephone Number) *</LabelTitle>
                        <InputBox placeholder='e.g. 0901234567' /> */}
                        <InputContent
                            type={'tel'}
                            maxLength={'10'}
                            label={`เบอร์โทรศัพท์ (Telephone Number) *`}
                            placeholder={'e.g. 0901234567'}
                            value={parentTelephoneNumber}
                            setValue={setParentTelephoneNumber}
                            require={checkValidate(parentTelephoneNumber ? parentTelephoneNumber.toString() : '', statusValidate)}
                            validName={'โปรดระบุ'}
                        />
                    </div>
                </div>
                <div>
                    <TitleContent title={'ส่วนที่ 2 : ข้อมูลเพิ่มเติม Additional Information'} />
                </div>
                <div className='row'>
                    <div className='col-12'>
                        {/* <LabelTitle>โรคประจำตัวอื่นๆ (Other Underlying Diseases)</LabelTitle>
                        <InputBox placeholder='โปรดระบุ' /> */}
                        <InputContent
                            label={`โรคประจำตัวอื่นๆ (Other Underlying Diseases)`}
                            placeholder={'โปรดระบุ'}
                            value={otherUnderlyingDiseases}
                            setValue={setOtherUnderlyingDiseases}
                            require={false}
                            validName={'โปรดระบุ'}
                        />
                    </div>
                </div>
                <div className='mt-22'>
                    <LabelTitle>ผู้ป่วยเคยตรวจเลือดเพื่อยืนยันการเป็นโรคกล้ามเนื้ออ่อนแรงหรือไม่ (Did the patient ever had a Neuromuscular Disease blood test?) *</LabelTitle>
                    <RadioBox>
                        <input type="radio" name="neuromuscularDiseaseBloodTest" value={true} onChange={e => setNeuromuscularDiseaseBloodTest(e.target.value)} />
                        <span>{`เคย (Yes, I do) ***โปรดแนบเอกสารผลการตรวจเลือดในข้อถัดไป (Please attach a document of blood test results in the next section)`}</span>
                    </RadioBox>
                    <RadioBox >
                        <input type="radio" name="neuromuscularDiseaseBloodTest" value={false} onChange={e => setNeuromuscularDiseaseBloodTest(e.target.value)} />
                        <span>{`ไม่เคย (No, I don't)`}</span>
                    </RadioBox>
                    {checkValidate(neuromuscularDiseaseBloodTest, statusValidate) ? <ValidNameStyle>{`โปรดเลือก`}</ValidNameStyle> : null}
                </div>
                <div className='mt-22'>
                    <LabelTitle>เอกสารผลตรวจเลือดยืนยันการเป็นโรคกล้ามเนื้ออ่อนแรง (Neuromuscular Disease Blood test results confirmation)</LabelTitle>
                    <FlexStyleUploadFile>
                        <ButtonUploadFile onClick={() => selectFileBloodDocument({}, ({ file }) => {
                            handleUploadFileBloodDocument(file)
                        })}>
                            <div className='button-image'>
                                <Image src={upload} />
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
                <div className='mt-22'>
                    <LabelTitle>ผู้ป่วยมีบัตรประจำตัวคนพิการหรือไม่ (Does the patient have a disability ID Card?) *</LabelTitle>
                    <RadioBox >
                        <input type="radio" name="radio" value={true} onChange={e => setDoesThePatientHaveADisabilityIDCard(e.target.value)} />
                        <span>{`มี (Yes, I do) ***โปรดแนบสำเนาบัตรผู้พิการในข้อถัดไป (Please attach the copy of Disability ID Card in the next section)`}</span>
                    </RadioBox>
                    <RadioBox>
                        <input type="radio" name="radio" value={false} onChange={e => setDoesThePatientHaveADisabilityIDCard(e.target.value)} />
                        <span>{`ไม่เคย (No, I don't)`}</span>
                    </RadioBox>
                    {checkValidate(doesThePatientHaveADisabilityIDCard, statusValidate) ? <ValidNameStyle>{`โปรดเลือก`}</ValidNameStyle> : null}
                </div>
                <div className='mt-22'>
                    <LabelTitle>สำเนาบัตรประจำตัวคนพิการ (Copy of Disability ID Card)</LabelTitle>
                    <FlexStyleUploadFile>
                        <ButtonUploadFile onClick={() => selectFileCardCopy({}, ({ file }) => {
                            handleUploadFileIDCard(file)
                        })}>
                            <div className='button-image'>
                                <Image src={upload} alt={`upload`} />
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
                <div>
                    <div className='row'>
                        <div className='col-12 col-md-12 col-sm-12 mt-22'>
                            {/* <LabelTitle>{`ต้องการให้เราช่วยเหลือเรื่องใด (How can F)E)N)D) help?)`}</LabelTitle>
                            <InputBox placeholder='โปรดระบุ' /> */}
                            <InputContent
                                label={`ต้องการให้เราช่วยเหลือเรื่องใด (How can F)E)N)D) help?)`}
                                placeholder={'โปรดระบุ'}
                                value={howCanHelp}
                                setValue={setHowCanHelp}
                                require={false}
                                validName={'โปรดระบุ'}
                            />
                        </div>
                    </div>
                    <div className='row'>
                        <div className='col-12 col-md-12 col-sm-12 mt-22'>
                            {/* <LabelTitle>อีเมล (Email)</LabelTitle>
                            <InputBox placeholder='โปรดระบุ' /> */}
                            <InputContent
                                type={'email'}
                                label={`อีเมล (Email)`}
                                placeholder={'โปรดระบุ'}
                                value={email}
                                setValue={setEmail}
                                require={false}
                                validName={'โปรดระบุ'}
                                validNameType={'รูปแบบอีเมลไม่ถูกต้อง'}
                            />
                        </div>
                    </div>
                </div>
                <div>
                    <TitleContent title={'ส่วนที่ 3 : ความยินยอม (Consent)'} />
                </div>
                <div>
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
                            <Viewer fileUrl="../../static/pdf/FEND_PDPA.pdf" defaultScale={SpecialZoomLevel.PageFit} />
                        </Worker>
                    </FilePDFStyle>
                    <RadioBox>
                        <input type="radio" name="consent" value={true} onChange={e => setConsent(e.target.value)} />
                        <span>ฉันยินยอมให้เว็บไซต์นี้จัดเก็บข้อมูลที่ฉันให้ และยินยอมให้ส่งต่อให้บุคคลที่ 3 เพื่อประโยชน์ในการให้ความช่วยเหลือ การรักษา และโครงการวิจัยที่มีประโยชน์ เท่านั้น (I consent and allow this website to store my submitted information and refer to a third party for the benefit of assistance, treatment and useful research projects only)</span>
                    </RadioBox>
                    {checkValidate(consent, statusValidate) ? <ValidNameStyle>{`โปรดเลือก`}</ValidNameStyle> : null}
                </div>
                <div className='mt-22'>
                    <ButtonTheme style={{ margin: 'auto' }} onClick={() => handleSubmitRegister()}>
                        <span>ส่งแบบฟอร์มลงทะเบียน</span>
                    </ButtonTheme>
                </div>
            </WrapperMyShelf>
            <FooterBannerContent />
            <FooterContent />
        </>
    )
}

export default RegisterMySelfScreen
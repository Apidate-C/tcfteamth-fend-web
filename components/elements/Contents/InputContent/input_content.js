import React, { useState } from 'react'
import DatePicker, { registerLocale } from 'react-datepicker'
import { LabelTitle, InputBox, ValidNameStyle } from '../../../styles/global'
import th from 'date-fns/locale/th'
registerLocale('th', th)

const InputContent = ({
    label,
    placeholder,
    validName,
    validNameType = '',
    require = false,
    value,
    setValue,
    type,
    disabled = false,
    maxLength = "9999" }) => {

    const [statusValidate, setStatusValidate] = useState(false)

    const typeInput = type ? type : 'text'


    const handleInputChange = (e, maxLength) => {
        let val = e.target.value
        let newValue = parseInt(val, 10).length < parseInt(maxLength, 10) ? val : parseInt(val.toString().substring(0, maxLength));
        setValue(newValue)
    }

    const handleInputPhoneNumberChange = (e, maxLength) => {
        let val = e.target.value
        let newValue = parseInt(val, 10).length < parseInt(maxLength, 10) ? val : parseInt(val.toString().substring(0, maxLength));
        if (val === '0' || val === '00') {
            setValue('0')
        } else {
            setValue('0' + newValue)
        }
    }

    const handleInputEmailChange = (e) => {
        let val = e.target.value

        setValue(val)

        let filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/
        if (filter.test(val)) {
            setStatusValidate(false)
        } else {
            setStatusValidate(true)
        }
    }

    return (
        <>
            {label && <LabelTitle>{label}</LabelTitle>}
            {
                typeInput === 'number' ? (
                    <InputBox
                        type={'number'}
                        placeholder={placeholder}
                        require={require}
                        value={value}
                        onChange={e => handleInputChange(e, maxLength)}
                        disabled={disabled}
                    />
                )
                    :
                    typeInput === 'email' ? (
                        <InputBox
                            type={typeInput}
                            placeholder={placeholder}
                            require={require}
                            value={value}
                            onChange={e => handleInputEmailChange(e)}
                            disabled={disabled}
                        />
                    )
                        :
                        typeInput === 'date' ? (
                            <DatePicker
                                dateFormat="dd/MM/yyyy"
                                showYearDropdown
                                dateFormatCalendar="MMMM"
                                yearDropdownItemNumber={100}
                                scrollableYearDropdown
                                selected={value}
                                locale={th}
                                onChange={(date) => setValue(date)}
                                placeholderText={'วัน/เดือน/ปี'}
                                customInput={
                                    <InputBox
                                        require={require}
                                        // value={value}
                                        // onChange={e => setValue(e.target.value)}
                                        disabled={disabled}
                                    />
                                }
                                disabled={disabled}
                            />
                        )
                            :
                            typeInput === 'tel' ? (
                                <InputBox
                                    type={'number'}
                                    placeholder={placeholder}
                                    require={require}
                                    value={value}
                                    onChange={e => handleInputPhoneNumberChange(e, maxLength)}
                                    disabled={disabled}
                                />
                            )
                                : (
                                    <InputBox
                                        type={typeInput}
                                        placeholder={placeholder}
                                        require={require}
                                        value={value}
                                        onChange={e => setValue(e.target.value)}
                                        disabled={disabled}
                                    />
                                )
            }

            {validName && require ? <ValidNameStyle>{validName}</ValidNameStyle> : null}
            {validNameType && statusValidate ? <ValidNameStyle>{validNameType}</ValidNameStyle> : null}
        </>
    )
}

export default InputContent
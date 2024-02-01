import React from 'react'
import Image from 'next/image'
import { LabelTitle, InputBox, ValidNameStyle, InputFilterBox } from '../../../styles/global'
import iconDropdown from '../../../../static/images/icon-dropdown.png'

const InputFilterContent = ({ label, placeholder, validName, require = false, value, setValue, type, listKey }) => {

    const typeInput = type ? type : 'text'

    return (
        <>
            {label && <LabelTitle>{label}</LabelTitle>}
            <InputFilterBox>
                <InputBox type={typeInput} className="none-icon-right" placeholder={placeholder} list={listKey} require={require} value={value} onChange={e => setValue(e.target.value)} />
                <div className='input-icon'>
                    <Image src={iconDropdown} />
                </div>
            </InputFilterBox>
            {validName && require ? <ValidNameStyle>{validName}</ValidNameStyle> : null}
        </>
    )
}

export default InputFilterContent
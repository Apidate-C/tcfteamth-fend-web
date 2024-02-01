import React from 'react';
import { HeaderTable, FilterBox } from './style'
import { ButtonTheme, InputFilterBox, InputBox, SelectBox } from '../../../styles/global'
import Image from 'next/image'

import logoExport from '../../../../static/images/icon-export.png'
import logoSearch from '../../../../static/images/icon-search.png'

const TableContent = ({ showExport, onClickExport, placeholder, value, setValue, sorting, setSorting }) => {
    return (
        <HeaderTable className='row'>
            <div className={showExport ? `col-8 col-sm-8` : `col-8 col-sm-8`}>
                <FilterBox>
                    <span>ค้นหา</span>
                    <InputFilterBox className='col-6'>
                        <InputBox className='none-icon-right' placeholder={placeholder} value={value} onChange={e => setValue(e.target.value)} />
                        <div className='input-icon'>
                            <Image src={logoSearch} />
                        </div>
                    </InputFilterBox>
                    {
                        setSorting && (
                            <>
                                <span>เรียง</span>
                                <SelectBox 
                                    value={sorting} 
                                    onChange={(e) => {setSorting(e.target.value)}} 
                                >
                                    <option value="ASC">เก่า-ใหม่</option>
                                    <option value="DESC">ใหม่-เก่า</option>
                                </SelectBox>
                            </>
                        )
                    }
                </FilterBox>
            </div>
            {
                showExport ? (
                    <ButtonTheme backgroundColor={'#7bb453'} onClick={onClickExport}>
                        <Image src={logoExport} />
                        <span>Export File</span>
                    </ButtonTheme>
                )
                    : null
            }
        </HeaderTable>
    )
}

export default TableContent
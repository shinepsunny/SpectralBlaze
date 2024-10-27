<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="17">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>fwd_fft</name>
		<module_structure>Dataflow</module_structure>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>8</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>gmem</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>137</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>128</bitwidth>
				</Value>
				<direction>2</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>in1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1796260256</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>in2</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>622120240</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>out_r</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>631284960</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_5">
				<Value>
					<Obj>
						<type>1</type>
						<id>5</id>
						<name>ctrl1_reg</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>ctrl1_reg</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1869833586</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_6">
				<Value>
					<Obj>
						<type>1</type>
						<id>6</id>
						<name>ctrl2_reg</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>ctrl2_reg</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>622446000</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_7">
				<Value>
					<Obj>
						<type>1</type>
						<id>7</id>
						<name>layer1_reg</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>layer1_reg</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1667589180</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_8">
				<Value>
					<Obj>
						<type>1</type>
						<id>8</id>
						<name>layer2_reg</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>layer2_reg</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>0</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>36</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>34</id>
						<name>out_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>631315184</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>140</item>
					<item>141</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>35</id>
						<name>in2_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>825309808</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>142</item>
					<item>143</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>36</id>
						<name>in1_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>758394930</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>144</item>
					<item>145</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>37</id>
						<name>layer1_reg_c31</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>171847458</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>147</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>40</id>
						<name>layer1_reg_c30</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>574454117</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>148</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>43</id>
						<name>layer1_reg_c29</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1986360096</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>149</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>6</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>46</id>
						<name>layer1_reg_c28</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>543649385</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>150</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>7</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_16">
				<Value>
					<Obj>
						<type>0</type>
						<id>49</id>
						<name>layer1_reg_c27</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1145981250</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>151</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>8</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_17">
				<Value>
					<Obj>
						<type>0</type>
						<id>52</id>
						<name>layer1_reg_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1768189545</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>152</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>9</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_18">
				<Value>
					<Obj>
						<type>0</type>
						<id>55</id>
						<name>ctrl2_reg_c26</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>757935405</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>153</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>10</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_19">
				<Value>
					<Obj>
						<type>0</type>
						<id>58</id>
						<name>ctrl2_reg_c25</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1717924464</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>154</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>11</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_20">
				<Value>
					<Obj>
						<type>0</type>
						<id>61</id>
						<name>ctrl2_reg_c24</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1701344105</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>155</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>12</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_21">
				<Value>
					<Obj>
						<type>0</type>
						<id>64</id>
						<name>ctrl2_reg_c23</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>574321519</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>156</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>13</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_22">
				<Value>
					<Obj>
						<type>0</type>
						<id>67</id>
						<name>ctrl2_reg_c22</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1346576430</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>157</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>14</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_23">
				<Value>
					<Obj>
						<type>0</type>
						<id>70</id>
						<name>ctrl2_reg_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>859387487</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>158</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>15</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_24">
				<Value>
					<Obj>
						<type>0</type>
						<id>73</id>
						<name>ctrl1_reg_c21</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>0</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>159</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>16</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_25">
				<Value>
					<Obj>
						<type>0</type>
						<id>76</id>
						<name>ctrl1_reg_c20</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>6</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>160</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>17</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_26">
				<Value>
					<Obj>
						<type>0</type>
						<id>79</id>
						<name>ctrl1_reg_c19</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>619357776</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>161</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>18</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_27">
				<Value>
					<Obj>
						<type>0</type>
						<id>82</id>
						<name>ctrl1_reg_c18</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>790766141</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>162</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>19</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_28">
				<Value>
					<Obj>
						<type>0</type>
						<id>85</id>
						<name>ctrl1_reg_c17</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>619358612</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>163</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>20</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_29">
				<Value>
					<Obj>
						<type>0</type>
						<id>88</id>
						<name>ctrl1_reg_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>619359124</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>164</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>21</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_30">
				<Value>
					<Obj>
						<type>0</type>
						<id>111</id>
						<name>c_ifmap_patch_st</name>
						<fileName>src/main.cpp</fileName>
						<fileDirectory>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</fileDirectory>
						<lineNumber>509</lineNumber>
						<contextFuncName>fwd_fft</contextFuncName>
						<contextNormFuncName>fwd_fft</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="11" tracking_level="0" version="0">
								<first>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</first>
								<second class_id="12" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="13" tracking_level="0" version="0">
										<first class_id="14" tracking_level="0" version="0">
											<first>src/main.cpp</first>
											<second>fwd_fft</second>
										</first>
										<second>509</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>c_ifmap_patch_st</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>619359451</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>165</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>22</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_31">
				<Value>
					<Obj>
						<type>0</type>
						<id>114</id>
						<name>c_ifmap_col_op_st</name>
						<fileName>src/main.cpp</fileName>
						<fileDirectory>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</fileDirectory>
						<lineNumber>510</lineNumber>
						<contextFuncName>fwd_fft</contextFuncName>
						<contextNormFuncName>fwd_fft</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>src/main.cpp</first>
											<second>fwd_fft</second>
										</first>
										<second>510</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>c_ifmap_col_op_st</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>619359802</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>166</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>23</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_32">
				<Value>
					<Obj>
						<type>0</type>
						<id>117</id>
						<name>c_fft_row_op_st</name>
						<fileName>src/main.cpp</fileName>
						<fileDirectory>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</fileDirectory>
						<lineNumber>511</lineNumber>
						<contextFuncName>fwd_fft</contextFuncName>
						<contextNormFuncName>fwd_fft</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>src/main.cpp</first>
											<second>fwd_fft</second>
										</first>
										<second>511</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>c_fft_row_op_st</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>0</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>167</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>24</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_33">
				<Value>
					<Obj>
						<type>0</type>
						<id>120</id>
						<name>c_fft_col_op_st</name>
						<fileName>src/main.cpp</fileName>
						<fileDirectory>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</fileDirectory>
						<lineNumber>512</lineNumber>
						<contextFuncName>fwd_fft</contextFuncName>
						<contextNormFuncName>fwd_fft</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>src/main.cpp</first>
											<second>fwd_fft</second>
										</first>
										<second>512</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>c_fft_col_op_st</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>619360621</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>168</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>25</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_34">
				<Value>
					<Obj>
						<type>0</type>
						<id>123</id>
						<name>c_row_op_st</name>
						<fileName>src/main.cpp</fileName>
						<fileDirectory>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</fileDirectory>
						<lineNumber>513</lineNumber>
						<contextFuncName>fwd_fft</contextFuncName>
						<contextNormFuncName>fwd_fft</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>src/main.cpp</first>
											<second>fwd_fft</second>
										</first>
										<second>513</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>c_row_op_st</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>631952280</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>169</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>26</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_35">
				<Value>
					<Obj>
						<type>0</type>
						<id>126</id>
						<name>c_row_op_trans_st</name>
						<fileName>src/main.cpp</fileName>
						<fileDirectory>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</fileDirectory>
						<lineNumber>514</lineNumber>
						<contextFuncName>fwd_fft</contextFuncName>
						<contextNormFuncName>fwd_fft</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>src/main.cpp</first>
											<second>fwd_fft</second>
										</first>
										<second>514</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>c_row_op_trans_st</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>170</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>27</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_36">
				<Value>
					<Obj>
						<type>0</type>
						<id>129</id>
						<name>out_c_channel</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>631953464</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>172</item>
					<item>173</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>34</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_37">
				<Value>
					<Obj>
						<type>0</type>
						<id>130</id>
						<name>_ln518</name>
						<fileName>src/main.cpp</fileName>
						<fileDirectory>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</fileDirectory>
						<lineNumber>518</lineNumber>
						<contextFuncName>fwd_fft</contextFuncName>
						<contextNormFuncName>fwd_fft</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>src/main.cpp</first>
											<second>fwd_fft</second>
										</first>
										<second>518</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>631953952</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>12</count>
					<item_version>0</item_version>
					<item>175</item>
					<item>176</item>
					<item>177</item>
					<item>178</item>
					<item>179</item>
					<item>180</item>
					<item>181</item>
					<item>182</item>
					<item>183</item>
					<item>184</item>
					<item>185</item>
					<item>186</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>2.86</m_delay>
				<m_topoIndex>28</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_38">
				<Value>
					<Obj>
						<type>0</type>
						<id>131</id>
						<name>_ln519</name>
						<fileName>src/main.cpp</fileName>
						<fileDirectory>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</fileDirectory>
						<lineNumber>519</lineNumber>
						<contextFuncName>fwd_fft</contextFuncName>
						<contextNormFuncName>fwd_fft</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>src/main.cpp</first>
											<second>fwd_fft</second>
										</first>
										<second>519</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>631954984</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>10</count>
					<item_version>0</item_version>
					<item>188</item>
					<item>189</item>
					<item>190</item>
					<item>191</item>
					<item>192</item>
					<item>193</item>
					<item>194</item>
					<item>195</item>
					<item>196</item>
					<item>1192</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>29</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_39">
				<Value>
					<Obj>
						<type>0</type>
						<id>132</id>
						<name>_ln520</name>
						<fileName>src/main.cpp</fileName>
						<fileDirectory>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</fileDirectory>
						<lineNumber>520</lineNumber>
						<contextFuncName>fwd_fft</contextFuncName>
						<contextNormFuncName>fwd_fft</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>src/main.cpp</first>
											<second>fwd_fft</second>
										</first>
										<second>520</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>631955136</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>22</count>
					<item_version>0</item_version>
					<item>198</item>
					<item>199</item>
					<item>200</item>
					<item>201</item>
					<item>202</item>
					<item>203</item>
					<item>204</item>
					<item>205</item>
					<item>206</item>
					<item>245</item>
					<item>246</item>
					<item>247</item>
					<item>248</item>
					<item>249</item>
					<item>250</item>
					<item>251</item>
					<item>252</item>
					<item>253</item>
					<item>254</item>
					<item>255</item>
					<item>256</item>
					<item>1191</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>30</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_40">
				<Value>
					<Obj>
						<type>0</type>
						<id>133</id>
						<name>_ln521</name>
						<fileName>src/main.cpp</fileName>
						<fileDirectory>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</fileDirectory>
						<lineNumber>521</lineNumber>
						<contextFuncName>fwd_fft</contextFuncName>
						<contextNormFuncName>fwd_fft</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>src/main.cpp</first>
											<second>fwd_fft</second>
										</first>
										<second>521</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>631955416</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>10</count>
					<item_version>0</item_version>
					<item>208</item>
					<item>209</item>
					<item>210</item>
					<item>211</item>
					<item>212</item>
					<item>213</item>
					<item>214</item>
					<item>215</item>
					<item>216</item>
					<item>1190</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>31</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_41">
				<Value>
					<Obj>
						<type>0</type>
						<id>134</id>
						<name>_ln522</name>
						<fileName>src/main.cpp</fileName>
						<fileDirectory>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</fileDirectory>
						<lineNumber>522</lineNumber>
						<contextFuncName>fwd_fft</contextFuncName>
						<contextNormFuncName>fwd_fft</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>src/main.cpp</first>
											<second>fwd_fft</second>
										</first>
										<second>522</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>0</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>10</count>
					<item_version>0</item_version>
					<item>218</item>
					<item>219</item>
					<item>220</item>
					<item>221</item>
					<item>222</item>
					<item>223</item>
					<item>224</item>
					<item>225</item>
					<item>226</item>
					<item>1189</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>32</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_42">
				<Value>
					<Obj>
						<type>0</type>
						<id>135</id>
						<name>_ln523</name>
						<fileName>src/main.cpp</fileName>
						<fileDirectory>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</fileDirectory>
						<lineNumber>523</lineNumber>
						<contextFuncName>fwd_fft</contextFuncName>
						<contextNormFuncName>fwd_fft</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>src/main.cpp</first>
											<second>fwd_fft</second>
										</first>
										<second>523</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>10</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>22</count>
					<item_version>0</item_version>
					<item>228</item>
					<item>229</item>
					<item>230</item>
					<item>231</item>
					<item>232</item>
					<item>233</item>
					<item>234</item>
					<item>235</item>
					<item>236</item>
					<item>257</item>
					<item>258</item>
					<item>259</item>
					<item>260</item>
					<item>261</item>
					<item>262</item>
					<item>263</item>
					<item>264</item>
					<item>265</item>
					<item>266</item>
					<item>267</item>
					<item>268</item>
					<item>1188</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>33</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_43">
				<Value>
					<Obj>
						<type>0</type>
						<id>136</id>
						<name>_ln524</name>
						<fileName>src/main.cpp</fileName>
						<fileDirectory>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</fileDirectory>
						<lineNumber>524</lineNumber>
						<contextFuncName>fwd_fft</contextFuncName>
						<contextNormFuncName>fwd_fft</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>src/main.cpp</first>
											<second>fwd_fft</second>
										</first>
										<second>524</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>4</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>238</item>
					<item>239</item>
					<item>240</item>
					<item>241</item>
					<item>242</item>
					<item>243</item>
					<item>244</item>
					<item>269</item>
					<item>1187</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>35</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_44">
				<Value>
					<Obj>
						<type>0</type>
						<id>137</id>
						<name>_ln525</name>
						<fileName>src/main.cpp</fileName>
						<fileDirectory>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</fileDirectory>
						<lineNumber>525</lineNumber>
						<contextFuncName>fwd_fft</contextFuncName>
						<contextNormFuncName>fwd_fft</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/shine/Desktop/fft_story/hls/fwd_fft/v4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>src/main.cpp</first>
											<second>fwd_fft</second>
										</first>
										<second>525</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>3</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>36</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>9</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_45">
				<Value>
					<Obj>
						<type>2</type>
						<id>146</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>0</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_46">
				<Value>
					<Obj>
						<type>2</type>
						<id>171</id>
						<name>entry_proc47</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>619366817</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:entry_proc47&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_47">
				<Value>
					<Obj>
						<type>2</type>
						<id>174</id>
						<name>Mem_Patch_Gen</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>631960376</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Mem_Patch_Gen&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_48">
				<Value>
					<Obj>
						<type>2</type>
						<id>187</id>
						<name>Col_Wise_Overlap_Gen</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>10</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Col_Wise_Overlap_Gen&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_49">
				<Value>
					<Obj>
						<type>2</type>
						<id>197</id>
						<name>FFT_R</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>1948262961</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:FFT_R&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_50">
				<Value>
					<Obj>
						<type>2</type>
						<id>207</id>
						<name>Row_Wise_Synch</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>619368311</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Row_Wise_Synch&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_51">
				<Value>
					<Obj>
						<type>2</type>
						<id>217</id>
						<name>Transpose</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>631030256</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Transpose&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_52">
				<Value>
					<Obj>
						<type>2</type>
						<id>227</id>
						<name>FFT_C</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>631962912</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:FFT_C&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_53">
				<Value>
					<Obj>
						<type>2</type>
						<id>237</id>
						<name>Mem_patch_Wr</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<isStorage>0</isStorage>
						<storageDepth>0</storageDepth>
						<coreId>172</coreId>
						<rtlModuleName></rtlModuleName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Mem_patch_Wr&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_54">
				<Obj>
					<type>3</type>
					<id>138</id>
					<name>fwd_fft</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<contextNormFuncName></contextNormFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<control></control>
					<opType></opType>
					<implIndex></implIndex>
					<coreName></coreName>
					<isStorage>0</isStorage>
					<storageDepth>0</storageDepth>
					<coreId>624298952</coreId>
					<rtlModuleName></rtlModuleName>
				</Obj>
				<node_objs>
					<count>36</count>
					<item_version>0</item_version>
					<item>34</item>
					<item>35</item>
					<item>36</item>
					<item>37</item>
					<item>40</item>
					<item>43</item>
					<item>46</item>
					<item>49</item>
					<item>52</item>
					<item>55</item>
					<item>58</item>
					<item>61</item>
					<item>64</item>
					<item>67</item>
					<item>70</item>
					<item>73</item>
					<item>76</item>
					<item>79</item>
					<item>82</item>
					<item>85</item>
					<item>88</item>
					<item>111</item>
					<item>114</item>
					<item>117</item>
					<item>120</item>
					<item>123</item>
					<item>126</item>
					<item>129</item>
					<item>130</item>
					<item>131</item>
					<item>132</item>
					<item>133</item>
					<item>134</item>
					<item>135</item>
					<item>136</item>
					<item>137</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>124</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_55">
				<id>141</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>34</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_56">
				<id>143</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>35</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_57">
				<id>145</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>36</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_58">
				<id>147</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>37</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_59">
				<id>148</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>40</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_60">
				<id>149</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>43</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_61">
				<id>150</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_62">
				<id>151</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>49</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_63">
				<id>152</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_64">
				<id>153</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>55</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_65">
				<id>154</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_66">
				<id>155</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_67">
				<id>156</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>64</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_68">
				<id>157</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>67</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_69">
				<id>158</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>70</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_70">
				<id>159</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>73</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_71">
				<id>160</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>76</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_72">
				<id>161</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>79</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_73">
				<id>162</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>82</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_74">
				<id>163</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>85</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_75">
				<id>164</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>88</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_76">
				<id>165</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>111</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_77">
				<id>166</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>114</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_78">
				<id>167</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>117</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_79">
				<id>168</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>120</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_80">
				<id>169</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>123</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_81">
				<id>170</id>
				<edge_type>1</edge_type>
				<source_obj>146</source_obj>
				<sink_obj>126</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_82">
				<id>172</id>
				<edge_type>1</edge_type>
				<source_obj>171</source_obj>
				<sink_obj>129</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_83">
				<id>173</id>
				<edge_type>1</edge_type>
				<source_obj>34</source_obj>
				<sink_obj>129</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_84">
				<id>175</id>
				<edge_type>1</edge_type>
				<source_obj>174</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_85">
				<id>176</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_86">
				<id>177</id>
				<edge_type>1</edge_type>
				<source_obj>36</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_87">
				<id>178</id>
				<edge_type>1</edge_type>
				<source_obj>35</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_88">
				<id>179</id>
				<edge_type>1</edge_type>
				<source_obj>111</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_89">
				<id>180</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_90">
				<id>181</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_91">
				<id>182</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_92">
				<id>183</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_93">
				<id>184</id>
				<edge_type>1</edge_type>
				<source_obj>73</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_94">
				<id>185</id>
				<edge_type>1</edge_type>
				<source_obj>55</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_95">
				<id>186</id>
				<edge_type>1</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>130</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_96">
				<id>188</id>
				<edge_type>1</edge_type>
				<source_obj>187</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_97">
				<id>189</id>
				<edge_type>1</edge_type>
				<source_obj>111</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_98">
				<id>190</id>
				<edge_type>1</edge_type>
				<source_obj>114</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_99">
				<id>191</id>
				<edge_type>1</edge_type>
				<source_obj>73</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_100">
				<id>192</id>
				<edge_type>1</edge_type>
				<source_obj>55</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_101">
				<id>193</id>
				<edge_type>1</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_102">
				<id>194</id>
				<edge_type>1</edge_type>
				<source_obj>76</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_103">
				<id>195</id>
				<edge_type>1</edge_type>
				<source_obj>58</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_104">
				<id>196</id>
				<edge_type>1</edge_type>
				<source_obj>40</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_105">
				<id>198</id>
				<edge_type>1</edge_type>
				<source_obj>197</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_106">
				<id>199</id>
				<edge_type>1</edge_type>
				<source_obj>114</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_107">
				<id>200</id>
				<edge_type>1</edge_type>
				<source_obj>117</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_108">
				<id>201</id>
				<edge_type>1</edge_type>
				<source_obj>76</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_109">
				<id>202</id>
				<edge_type>1</edge_type>
				<source_obj>58</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_110">
				<id>203</id>
				<edge_type>1</edge_type>
				<source_obj>40</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_111">
				<id>204</id>
				<edge_type>1</edge_type>
				<source_obj>79</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_112">
				<id>205</id>
				<edge_type>1</edge_type>
				<source_obj>61</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_113">
				<id>206</id>
				<edge_type>1</edge_type>
				<source_obj>43</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_114">
				<id>208</id>
				<edge_type>1</edge_type>
				<source_obj>207</source_obj>
				<sink_obj>133</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_115">
				<id>209</id>
				<edge_type>1</edge_type>
				<source_obj>117</source_obj>
				<sink_obj>133</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_116">
				<id>210</id>
				<edge_type>1</edge_type>
				<source_obj>123</source_obj>
				<sink_obj>133</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_117">
				<id>211</id>
				<edge_type>1</edge_type>
				<source_obj>79</source_obj>
				<sink_obj>133</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_118">
				<id>212</id>
				<edge_type>1</edge_type>
				<source_obj>61</source_obj>
				<sink_obj>133</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_119">
				<id>213</id>
				<edge_type>1</edge_type>
				<source_obj>43</source_obj>
				<sink_obj>133</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_120">
				<id>214</id>
				<edge_type>1</edge_type>
				<source_obj>82</source_obj>
				<sink_obj>133</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_121">
				<id>215</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>133</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_122">
				<id>216</id>
				<edge_type>1</edge_type>
				<source_obj>46</source_obj>
				<sink_obj>133</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_123">
				<id>218</id>
				<edge_type>1</edge_type>
				<source_obj>217</source_obj>
				<sink_obj>134</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_124">
				<id>219</id>
				<edge_type>1</edge_type>
				<source_obj>123</source_obj>
				<sink_obj>134</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_125">
				<id>220</id>
				<edge_type>1</edge_type>
				<source_obj>126</source_obj>
				<sink_obj>134</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_126">
				<id>221</id>
				<edge_type>1</edge_type>
				<source_obj>82</source_obj>
				<sink_obj>134</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_127">
				<id>222</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>134</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_128">
				<id>223</id>
				<edge_type>1</edge_type>
				<source_obj>46</source_obj>
				<sink_obj>134</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_129">
				<id>224</id>
				<edge_type>1</edge_type>
				<source_obj>85</source_obj>
				<sink_obj>134</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_130">
				<id>225</id>
				<edge_type>1</edge_type>
				<source_obj>67</source_obj>
				<sink_obj>134</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_131">
				<id>226</id>
				<edge_type>1</edge_type>
				<source_obj>49</source_obj>
				<sink_obj>134</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_132">
				<id>228</id>
				<edge_type>1</edge_type>
				<source_obj>227</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_133">
				<id>229</id>
				<edge_type>1</edge_type>
				<source_obj>126</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_134">
				<id>230</id>
				<edge_type>1</edge_type>
				<source_obj>120</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_135">
				<id>231</id>
				<edge_type>1</edge_type>
				<source_obj>85</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_136">
				<id>232</id>
				<edge_type>1</edge_type>
				<source_obj>67</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_137">
				<id>233</id>
				<edge_type>1</edge_type>
				<source_obj>49</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_138">
				<id>234</id>
				<edge_type>1</edge_type>
				<source_obj>88</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_139">
				<id>235</id>
				<edge_type>1</edge_type>
				<source_obj>70</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_140">
				<id>236</id>
				<edge_type>1</edge_type>
				<source_obj>52</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_141">
				<id>238</id>
				<edge_type>1</edge_type>
				<source_obj>237</source_obj>
				<sink_obj>136</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_142">
				<id>239</id>
				<edge_type>1</edge_type>
				<source_obj>120</source_obj>
				<sink_obj>136</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_143">
				<id>240</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>136</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_144">
				<id>241</id>
				<edge_type>1</edge_type>
				<source_obj>129</source_obj>
				<sink_obj>136</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_145">
				<id>242</id>
				<edge_type>1</edge_type>
				<source_obj>88</source_obj>
				<sink_obj>136</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_146">
				<id>243</id>
				<edge_type>1</edge_type>
				<source_obj>70</source_obj>
				<sink_obj>136</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_147">
				<id>244</id>
				<edge_type>1</edge_type>
				<source_obj>52</source_obj>
				<sink_obj>136</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_148">
				<id>245</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_149">
				<id>246</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_150">
				<id>247</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_151">
				<id>248</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_152">
				<id>249</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_153">
				<id>250</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_154">
				<id>251</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_155">
				<id>252</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_156">
				<id>253</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_157">
				<id>254</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_158">
				<id>255</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_159">
				<id>256</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_160">
				<id>257</id>
				<edge_type>1</edge_type>
				<source_obj>21</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_161">
				<id>258</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_162">
				<id>259</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_163">
				<id>260</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_164">
				<id>261</id>
				<edge_type>1</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_165">
				<id>262</id>
				<edge_type>1</edge_type>
				<source_obj>26</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_166">
				<id>263</id>
				<edge_type>1</edge_type>
				<source_obj>27</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_167">
				<id>264</id>
				<edge_type>1</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_168">
				<id>265</id>
				<edge_type>1</edge_type>
				<source_obj>29</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_169">
				<id>266</id>
				<edge_type>1</edge_type>
				<source_obj>30</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_170">
				<id>267</id>
				<edge_type>1</edge_type>
				<source_obj>31</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_171">
				<id>268</id>
				<edge_type>1</edge_type>
				<source_obj>32</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_172">
				<id>269</id>
				<edge_type>1</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>136</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_173">
				<id>1187</id>
				<edge_type>4</edge_type>
				<source_obj>135</source_obj>
				<sink_obj>136</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_174">
				<id>1188</id>
				<edge_type>4</edge_type>
				<source_obj>134</source_obj>
				<sink_obj>135</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_175">
				<id>1189</id>
				<edge_type>4</edge_type>
				<source_obj>133</source_obj>
				<sink_obj>134</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_176">
				<id>1190</id>
				<edge_type>4</edge_type>
				<source_obj>132</source_obj>
				<sink_obj>133</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_177">
				<id>1191</id>
				<edge_type>4</edge_type>
				<source_obj>131</source_obj>
				<sink_obj>132</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_178">
				<id>1192</id>
				<edge_type>4</edge_type>
				<source_obj>130</source_obj>
				<sink_obj>131</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_179">
			<mId>1</mId>
			<mTag>fwd_fft</mTag>
			<mNormTag>fwd_fft</mNormTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>138</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>64</mMinLatency>
			<mMaxLatency>301271</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_180">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>8</count>
					<item_version>0</item_version>
					<item class_id="25" tracking_level="1" version="0" object_id="_181">
						<name>gmem</name>
						<dir>2</dir>
						<type>1</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_182">
						<name>in1</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_183">
						<name>in2</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_184">
						<name>out</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_185">
						<name>ctrl1_reg</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_186">
						<name>ctrl2_reg</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_187">
						<name>layer1_reg</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_188">
						<name>layer2_reg</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
				</port_list>
				<process_list class_id="27" tracking_level="0" version="0">
					<count>8</count>
					<item_version>0</item_version>
					<item class_id="28" tracking_level="1" version="0" object_id="_189">
						<type>0</type>
						<name>entry_proc47_U0</name>
						<ssdmobj_id>129</ssdmobj_id>
						<pins class_id="29" tracking_level="0" version="0">
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="30" tracking_level="1" version="0" object_id="_190">
								<port class_id_reference="25" object_id="_191">
									<name>out</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_184"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id="31" tracking_level="1" version="0" object_id="_192">
									<type>0</type>
									<name>entry_proc47_U0</name>
									<ssdmobj_id>129</ssdmobj_id>
								</inst>
							</item>
						</pins>
						<in_source_fork>1</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_193">
						<type>0</type>
						<name>Mem_Patch_Gen_U0</name>
						<ssdmobj_id>130</ssdmobj_id>
						<pins>
							<count>7</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_194">
								<port class_id_reference="25" object_id="_195">
									<name>gmem</name>
									<dir>0</dir>
									<type>1</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_181"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_196">
									<type>0</type>
									<name>Mem_Patch_Gen_U0</name>
									<ssdmobj_id>130</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="30" object_id="_197">
								<port class_id_reference="25" object_id="_198">
									<name>in1</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_182"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_196"></inst>
							</item>
							<item class_id_reference="30" object_id="_199">
								<port class_id_reference="25" object_id="_200">
									<name>in2</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_183"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_196"></inst>
							</item>
							<item class_id_reference="30" object_id="_201">
								<port class_id_reference="25" object_id="_202">
									<name>ctrl1_reg</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_185"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_196"></inst>
							</item>
							<item class_id_reference="30" object_id="_203">
								<port class_id_reference="25" object_id="_204">
									<name>ctrl2_reg</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_186"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_196"></inst>
							</item>
							<item class_id_reference="30" object_id="_205">
								<port class_id_reference="25" object_id="_206">
									<name>layer1_reg</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_187"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_196"></inst>
							</item>
							<item class_id_reference="30" object_id="_207">
								<port class_id_reference="25" object_id="_208">
									<name>layer2_reg</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_188"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_196"></inst>
							</item>
						</pins>
						<in_source_fork>1</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_209">
						<type>0</type>
						<name>Col_Wise_Overlap_Gen_U0</name>
						<ssdmobj_id>131</ssdmobj_id>
						<pins>
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_210">
						<type>0</type>
						<name>FFT_R_U0</name>
						<ssdmobj_id>132</ssdmobj_id>
						<pins>
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_211">
						<type>0</type>
						<name>Row_Wise_Synch_U0</name>
						<ssdmobj_id>133</ssdmobj_id>
						<pins>
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_212">
						<type>0</type>
						<name>Transpose_U0</name>
						<ssdmobj_id>134</ssdmobj_id>
						<pins>
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_213">
						<type>0</type>
						<name>FFT_C_U0</name>
						<ssdmobj_id>135</ssdmobj_id>
						<pins>
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_214">
						<type>0</type>
						<name>Mem_patch_Wr_U0</name>
						<ssdmobj_id>136</ssdmobj_id>
						<pins>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_215">
								<port class_id_reference="25" object_id="_216">
									<name>gmem</name>
									<dir>1</dir>
									<type>1</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_181"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_217">
									<type>0</type>
									<name>Mem_patch_Wr_U0</name>
									<ssdmobj_id>136</ssdmobj_id>
								</inst>
							</item>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>1</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
				</process_list>
				<channel_list class_id="32" tracking_level="0" version="0">
					<count>25</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_218">
						<type>1</type>
						<name>out_c_channel</name>
						<ssdmobj_id>129</ssdmobj_id>
						<ctype>0</ctype>
						<depth>7</depth>
						<bitwidth>64</bitwidth>
						<suggested_type>1</suggested_type>
						<suggested_depth>7</suggested_depth>
						<source class_id_reference="30" object_id="_219">
							<port class_id_reference="25" object_id="_220">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_192"></inst>
						</source>
						<sink class_id_reference="30" object_id="_221">
							<port class_id_reference="25" object_id="_222">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_217"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_223">
						<type>1</type>
						<name>c_ifmap_patch_st</name>
						<ssdmobj_id>111</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1001</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>1001</suggested_depth>
						<source class_id_reference="30" object_id="_224">
							<port class_id_reference="25" object_id="_225">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_196"></inst>
						</source>
						<sink class_id_reference="30" object_id="_226">
							<port class_id_reference="25" object_id="_227">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id="_228">
								<type>0</type>
								<name>Col_Wise_Overlap_Gen_U0</name>
								<ssdmobj_id>131</ssdmobj_id>
							</inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_229">
						<type>1</type>
						<name>ctrl1_reg_c21</name>
						<ssdmobj_id>73</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_230">
							<port class_id_reference="25" object_id="_231">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_196"></inst>
						</source>
						<sink class_id_reference="30" object_id="_232">
							<port class_id_reference="25" object_id="_233">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_228"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_234">
						<type>1</type>
						<name>ctrl2_reg_c26</name>
						<ssdmobj_id>55</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_235">
							<port class_id_reference="25" object_id="_236">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_196"></inst>
						</source>
						<sink class_id_reference="30" object_id="_237">
							<port class_id_reference="25" object_id="_238">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_228"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_239">
						<type>1</type>
						<name>layer1_reg_c31</name>
						<ssdmobj_id>37</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_240">
							<port class_id_reference="25" object_id="_241">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_196"></inst>
						</source>
						<sink class_id_reference="30" object_id="_242">
							<port class_id_reference="25" object_id="_243">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_228"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_244">
						<type>1</type>
						<name>c_ifmap_col_op_st</name>
						<ssdmobj_id>114</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1001</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>1001</suggested_depth>
						<source class_id_reference="30" object_id="_245">
							<port class_id_reference="25" object_id="_246">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_228"></inst>
						</source>
						<sink class_id_reference="30" object_id="_247">
							<port class_id_reference="25" object_id="_248">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id="_249">
								<type>0</type>
								<name>FFT_R_U0</name>
								<ssdmobj_id>132</ssdmobj_id>
							</inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_250">
						<type>1</type>
						<name>ctrl1_reg_c20</name>
						<ssdmobj_id>76</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_251">
							<port class_id_reference="25" object_id="_252">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_228"></inst>
						</source>
						<sink class_id_reference="30" object_id="_253">
							<port class_id_reference="25" object_id="_254">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_249"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_255">
						<type>1</type>
						<name>ctrl2_reg_c25</name>
						<ssdmobj_id>58</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_256">
							<port class_id_reference="25" object_id="_257">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_228"></inst>
						</source>
						<sink class_id_reference="30" object_id="_258">
							<port class_id_reference="25" object_id="_259">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_249"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_260">
						<type>1</type>
						<name>layer1_reg_c30</name>
						<ssdmobj_id>40</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_261">
							<port class_id_reference="25" object_id="_262">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_228"></inst>
						</source>
						<sink class_id_reference="30" object_id="_263">
							<port class_id_reference="25" object_id="_264">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_249"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_265">
						<type>1</type>
						<name>c_fft_row_op_st</name>
						<ssdmobj_id>117</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_266">
							<port class_id_reference="25" object_id="_267">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_249"></inst>
						</source>
						<sink class_id_reference="30" object_id="_268">
							<port class_id_reference="25" object_id="_269">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id="_270">
								<type>0</type>
								<name>Row_Wise_Synch_U0</name>
								<ssdmobj_id>133</ssdmobj_id>
							</inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_271">
						<type>1</type>
						<name>ctrl1_reg_c19</name>
						<ssdmobj_id>79</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_272">
							<port class_id_reference="25" object_id="_273">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_249"></inst>
						</source>
						<sink class_id_reference="30" object_id="_274">
							<port class_id_reference="25" object_id="_275">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_270"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_276">
						<type>1</type>
						<name>ctrl2_reg_c24</name>
						<ssdmobj_id>61</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_277">
							<port class_id_reference="25" object_id="_278">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_249"></inst>
						</source>
						<sink class_id_reference="30" object_id="_279">
							<port class_id_reference="25" object_id="_280">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_270"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_281">
						<type>1</type>
						<name>layer1_reg_c29</name>
						<ssdmobj_id>43</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_282">
							<port class_id_reference="25" object_id="_283">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_249"></inst>
						</source>
						<sink class_id_reference="30" object_id="_284">
							<port class_id_reference="25" object_id="_285">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_270"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_286">
						<type>1</type>
						<name>c_row_op_st</name>
						<ssdmobj_id>123</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_287">
							<port class_id_reference="25" object_id="_288">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_270"></inst>
						</source>
						<sink class_id_reference="30" object_id="_289">
							<port class_id_reference="25" object_id="_290">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id="_291">
								<type>0</type>
								<name>Transpose_U0</name>
								<ssdmobj_id>134</ssdmobj_id>
							</inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_292">
						<type>1</type>
						<name>ctrl1_reg_c18</name>
						<ssdmobj_id>82</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_293">
							<port class_id_reference="25" object_id="_294">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_270"></inst>
						</source>
						<sink class_id_reference="30" object_id="_295">
							<port class_id_reference="25" object_id="_296">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_291"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_297">
						<type>1</type>
						<name>ctrl2_reg_c23</name>
						<ssdmobj_id>64</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_298">
							<port class_id_reference="25" object_id="_299">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_270"></inst>
						</source>
						<sink class_id_reference="30" object_id="_300">
							<port class_id_reference="25" object_id="_301">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_291"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_302">
						<type>1</type>
						<name>layer1_reg_c28</name>
						<ssdmobj_id>46</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_303">
							<port class_id_reference="25" object_id="_304">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_270"></inst>
						</source>
						<sink class_id_reference="30" object_id="_305">
							<port class_id_reference="25" object_id="_306">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_291"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_307">
						<type>1</type>
						<name>c_row_op_trans_st</name>
						<ssdmobj_id>126</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_308">
							<port class_id_reference="25" object_id="_309">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_291"></inst>
						</source>
						<sink class_id_reference="30" object_id="_310">
							<port class_id_reference="25" object_id="_311">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id="_312">
								<type>0</type>
								<name>FFT_C_U0</name>
								<ssdmobj_id>135</ssdmobj_id>
							</inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_313">
						<type>1</type>
						<name>ctrl1_reg_c17</name>
						<ssdmobj_id>85</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_314">
							<port class_id_reference="25" object_id="_315">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_291"></inst>
						</source>
						<sink class_id_reference="30" object_id="_316">
							<port class_id_reference="25" object_id="_317">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_312"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_318">
						<type>1</type>
						<name>ctrl2_reg_c22</name>
						<ssdmobj_id>67</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_319">
							<port class_id_reference="25" object_id="_320">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_291"></inst>
						</source>
						<sink class_id_reference="30" object_id="_321">
							<port class_id_reference="25" object_id="_322">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_312"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_323">
						<type>1</type>
						<name>layer1_reg_c27</name>
						<ssdmobj_id>49</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_324">
							<port class_id_reference="25" object_id="_325">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_291"></inst>
						</source>
						<sink class_id_reference="30" object_id="_326">
							<port class_id_reference="25" object_id="_327">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_312"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_328">
						<type>1</type>
						<name>c_fft_col_op_st</name>
						<ssdmobj_id>120</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_329">
							<port class_id_reference="25" object_id="_330">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_312"></inst>
						</source>
						<sink class_id_reference="30" object_id="_331">
							<port class_id_reference="25" object_id="_332">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_217"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_333">
						<type>1</type>
						<name>ctrl1_reg_c</name>
						<ssdmobj_id>88</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_334">
							<port class_id_reference="25" object_id="_335">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_312"></inst>
						</source>
						<sink class_id_reference="30" object_id="_336">
							<port class_id_reference="25" object_id="_337">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_217"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_338">
						<type>1</type>
						<name>ctrl2_reg_c</name>
						<ssdmobj_id>70</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_339">
							<port class_id_reference="25" object_id="_340">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_312"></inst>
						</source>
						<sink class_id_reference="30" object_id="_341">
							<port class_id_reference="25" object_id="_342">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_217"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_343">
						<type>1</type>
						<name>layer1_reg_c</name>
						<ssdmobj_id>52</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_344">
							<port class_id_reference="25" object_id="_345">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_312"></inst>
						</source>
						<sink class_id_reference="30" object_id="_346">
							<port class_id_reference="25" object_id="_347">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_217"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="36" tracking_level="0" version="0">
		<count>36</count>
		<item_version>0</item_version>
		<item class_id="37" tracking_level="0" version="0">
			<first>34</first>
			<second class_id="38" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>35</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>36</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>37</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>40</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>43</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>46</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>49</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>52</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>55</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>58</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>61</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>64</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>67</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>70</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>73</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>76</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>79</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>82</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>85</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>88</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>111</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>114</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>117</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>120</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>123</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>126</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>129</first>
			<second>
				<first>13</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>130</first>
			<second>
				<first>1</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>131</first>
			<second>
				<first>3</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>132</first>
			<second>
				<first>5</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>133</first>
			<second>
				<first>7</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>134</first>
			<second>
				<first>9</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>135</first>
			<second>
				<first>11</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>136</first>
			<second>
				<first>13</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>137</first>
			<second>
				<first>14</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="39" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="40" tracking_level="0" version="0">
			<first>138</first>
			<second class_id="41" tracking_level="0" version="0">
				<first>0</first>
				<second>14</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="42" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="43" tracking_level="1" version="0" object_id="_348">
			<region_name>fwd_fft</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>138</item>
			</basic_blocks>
			<nodes>
				<count>104</count>
				<item_version>0</item_version>
				<item>34</item>
				<item>35</item>
				<item>36</item>
				<item>37</item>
				<item>38</item>
				<item>39</item>
				<item>40</item>
				<item>41</item>
				<item>42</item>
				<item>43</item>
				<item>44</item>
				<item>45</item>
				<item>46</item>
				<item>47</item>
				<item>48</item>
				<item>49</item>
				<item>50</item>
				<item>51</item>
				<item>52</item>
				<item>53</item>
				<item>54</item>
				<item>55</item>
				<item>56</item>
				<item>57</item>
				<item>58</item>
				<item>59</item>
				<item>60</item>
				<item>61</item>
				<item>62</item>
				<item>63</item>
				<item>64</item>
				<item>65</item>
				<item>66</item>
				<item>67</item>
				<item>68</item>
				<item>69</item>
				<item>70</item>
				<item>71</item>
				<item>72</item>
				<item>73</item>
				<item>74</item>
				<item>75</item>
				<item>76</item>
				<item>77</item>
				<item>78</item>
				<item>79</item>
				<item>80</item>
				<item>81</item>
				<item>82</item>
				<item>83</item>
				<item>84</item>
				<item>85</item>
				<item>86</item>
				<item>87</item>
				<item>88</item>
				<item>89</item>
				<item>90</item>
				<item>91</item>
				<item>92</item>
				<item>93</item>
				<item>94</item>
				<item>95</item>
				<item>96</item>
				<item>97</item>
				<item>98</item>
				<item>99</item>
				<item>100</item>
				<item>101</item>
				<item>102</item>
				<item>103</item>
				<item>104</item>
				<item>105</item>
				<item>106</item>
				<item>107</item>
				<item>108</item>
				<item>109</item>
				<item>110</item>
				<item>111</item>
				<item>112</item>
				<item>113</item>
				<item>114</item>
				<item>115</item>
				<item>116</item>
				<item>117</item>
				<item>118</item>
				<item>119</item>
				<item>120</item>
				<item>121</item>
				<item>122</item>
				<item>123</item>
				<item>124</item>
				<item>125</item>
				<item>126</item>
				<item>127</item>
				<item>128</item>
				<item>129</item>
				<item>130</item>
				<item>131</item>
				<item>132</item>
				<item>133</item>
				<item>134</item>
				<item>135</item>
				<item>136</item>
				<item>137</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
			<mDBIIViolationVec class_id="44" tracking_level="0" version="0">
				<count>0</count>
				<item_version>0</item_version>
			</mDBIIViolationVec>
		</item>
	</regions>
	<dp_fu_nodes class_id="45" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="47" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="48" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core>
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>


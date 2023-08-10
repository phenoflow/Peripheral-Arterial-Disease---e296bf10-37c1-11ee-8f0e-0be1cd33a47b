cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  endovascular-peripheral-arterial-disease---primary:
    run: endovascular-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  axillary-peripheral-arterial-disease---primary:
    run: axillary-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: endovascular-peripheral-arterial-disease---primary/output
  peripheral-arterial-disease-bifurcation---primary:
    run: peripheral-arterial-disease-bifurcation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: axillary-peripheral-arterial-disease---primary/output
  thoracoabdominal-peripheral-arterial-disease---primary:
    run: thoracoabdominal-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-bifurcation---primary/output
  renal-peripheral-arterial-disease---primary:
    run: renal-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: thoracoabdominal-peripheral-arterial-disease---primary/output
  thoracic-peripheral-arterial-disease---primary:
    run: thoracic-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: renal-peripheral-arterial-disease---primary/output
  peripheral-arterial-disease-stenting---primary:
    run: peripheral-arterial-disease-stenting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: thoracic-peripheral-arterial-disease---primary/output
  angioplasty-peripheral-arterial-disease---primary:
    run: angioplasty-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-stenting---primary/output
  peripheral-arterial-disease-subclavian---primary:
    run: peripheral-arterial-disease-subclavian---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: angioplasty-peripheral-arterial-disease---primary/output
  brachial-peripheral-arterial-disease---primary:
    run: brachial-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-subclavian---primary/output
  peripheral-arterial-disease-coeliac---primary:
    run: peripheral-arterial-disease-coeliac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: brachial-peripheral-arterial-disease---primary/output
  superior-peripheral-arterial-disease---primary:
    run: superior-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-coeliac---primary/output
  peripheral-arterial-disease-inferior---primary:
    run: peripheral-arterial-disease-inferior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: superior-peripheral-arterial-disease---primary/output
  peripheral-arterial-disease-replacement---primary:
    run: peripheral-arterial-disease-replacement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-inferior---primary/output
  peripheral-arterial-disease-anastom---primary:
    run: peripheral-arterial-disease-anastom---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-replacement---primary/output
  common-peripheral-arterial-disease---primary:
    run: common-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-anastom---primary/output
  peripheral-arterial-disease-specified---primary:
    run: peripheral-arterial-disease-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: common-peripheral-arterial-disease---primary/output
  other-peripheral-arterial-disease---primary:
    run: other-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-specified---primary/output
  peripheral-arterial-disease-operation---primary:
    run: peripheral-arterial-disease-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: other-peripheral-arterial-disease---primary/output
  peripheral-arterial-disease-emergency---primary:
    run: peripheral-arterial-disease-emergency---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-operation---primary/output
  superficial-peripheral-arterial-disease---primary:
    run: superficial-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-emergency---primary/output
  peripheral-arterial-disease-prosthesis---primary:
    run: peripheral-arterial-disease-prosthesis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: superficial-peripheral-arterial-disease---primary/output
  tibial-peripheral-arterial-disease---primary:
    run: tibial-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-prosthesis---primary/output
  popliteal-peripheral-arterial-disease---primary:
    run: popliteal-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: tibial-peripheral-arterial-disease---primary/output
  peripheral-arterial-disease-peron---primary:
    run: peripheral-arterial-disease-peron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: popliteal-peripheral-arterial-disease---primary/output
  peripheral-arterial-disease-mellitus---primary:
    run: peripheral-arterial-disease-mellitus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-peron---primary/output
  peripheral-arterial-disease-which---primary:
    run: peripheral-arterial-disease-which---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-mellitus---primary/output
  peripheral-arterial-disease-rupture---primary:
    run: peripheral-arterial-disease-rupture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-which---primary/output
  aneurysmal-peripheral-arterial-disease---primary:
    run: aneurysmal-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-rupture---primary/output
  peripheral-arterial-disease---primary:
    run: peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: aneurysmal-peripheral-arterial-disease---primary/output
  peripheral-arterial-disease-buerger's---primary:
    run: peripheral-arterial-disease-buerger's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease---primary/output
  angiopathy-peripheral-arterial-disease---primary:
    run: angiopathy-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-buerger's---primary/output
  peripheral-arterial-disease-occlusion---primary:
    run: peripheral-arterial-disease-occlusion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: angiopathy-peripheral-arterial-disease---primary/output
  peripheral-arterial-disease-aorta---primary:
    run: peripheral-arterial-disease-aorta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-occlusion---primary/output
  abdominal-peripheral-arterial-disease---primary:
    run: abdominal-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-aorta---primary/output
  peripheral-arterial-disease-aneurysm---primary:
    run: peripheral-arterial-disease-aneurysm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: abdominal-peripheral-arterial-disease---primary/output
  peripheral-arterial-disease-pvd---primary:
    run: peripheral-arterial-disease-pvd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-aneurysm---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-pvd---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}

<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff; /* Button background color */
            color: #fff; /* Button text color */
            text-decoration: none; /* Remove underline */
            border-radius: 5px; /* Rounded corners */
            border: none; /* Remove border */
            cursor: pointer; /* Pointer cursor on hover */
            margin-left:200px;
        }

        .button:hover {
            opacity: 0.8; /* Reduce opacity on hover */
        }

        .disclaimer {
            font-size: 10px;
            color: grey;
            margin-top: 20px;
        }
    </style>
    <title>Approval Link</title>
</head>
<body>
    <div class="container">
        <p>Dear Sir/Mam,</p>
        <p> New Project has been generated for multiple positions,at CIPL.Kindly</p>
        <p>Please click the following link to approve:<br><br>  <a class="button" href="<?php echo e($details['url']); ?>" style="display: inline-block; text-decoration: none;">
            Click here<br>
        </a><br> to view the Project and perform the necessary action.</p>

        <p>Thanks,</p>

        <div class="disclaimer">
            <p class="disclaimer">Disclaimer:</p>
            <p class="disclaimer">This email and any attachments are intended solely for the use of the individual or entity to whom they are addressed. This communication may contain confidential and/or privileged information. If you are not the intended recipient, please notify the sender immediately and delete this email from your system. Any unauthorized use, dissemination, copying, or disclosure of this email and its contents is strictly prohibited.</p>
            <p class="disclaimer">For any concerns, please reach out to us at tahelpdesk@cipl.org.in.</p>
        </div>
    </div>
</body>
</html>
<?php /**PATH D:\RMS_V2\RMSAPI_V2\resources\views/emails/Approvedlink.blade.php ENDPATH**/ ?>
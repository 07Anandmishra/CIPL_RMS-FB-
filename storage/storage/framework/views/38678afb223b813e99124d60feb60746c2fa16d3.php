<!-- resources/views/emails/job_offer.blade.php -->
<!DOCTYPE html>
<html>
<head>
    <title>Job Offer</title>
    <style>
        .disclaimer {
            font-size: 10px;
            color: grey;
            margin-top: 20px;
        }
        .disclaimer p {
            font-size: 10px;
            color: grey;
            margin-top: 20px;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: white;
            background-color: #007bff;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 20px;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <p>Dear <?php echo e(ucwords($jobApplication->Name)); ?>,</p>
    <p>
        We are excited to extend an offer for the position of <?php echo e($jobApplication->JobTitle); ?> at Corporate Infotech Private Limited.
        Please find the attached offer letter with detailed information about the role and the terms of employment.
    </p>
    <p>
        We look forward to welcoming you to our team. Please review the offer and respond by <?php echo e($acceptLastDate); ?>.
    </p>
    <p>Thank you.</p>
    <p>Corporate Infotech Private Limited</p>
    <p>
        <a href="<?php echo e(config('app.AppBaseURL')); ?>job-offer/<?php echo e($jobApplication->onboard->offer_code); ?>" class="button">View Offer</a>
    </p>
    <div class="disclaimer">
        <p>Disclaimer:</p>
        <p>
            This email and any attachments are intended solely for the use of the individual or entity to whom they are addressed.
            This communication may contain confidential and/or privileged information. If you are not the intended recipient, please notify the sender immediately and delete this email from your system.
            Any unauthorized use, dissemination, copying, or disclosure of this email and its contents is strictly prohibited.
        </p>
        <p>
            For any concerns, please reach out to us at tahelpdesk@cipl.org.in.
        </p>
    </div>
</body>
</html><?php /**PATH D:\RMS_V2\RMSAPI_V2\resources\views/emails/job_offer.blade.php ENDPATH**/ ?>